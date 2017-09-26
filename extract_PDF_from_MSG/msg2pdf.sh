#!/bin/bash

# --------- START SETTINGS ---------
# PATH with trailing slash
DIR_TMP="tmp/"
DIR_PDF="PDF/"
DIR_ZIP="ZIP/"
MAXRETRY=11
DIFFCHECK=1 # 1 to check nopdf files
TXT_MSG="msg.txt"
TXT_PDF="pdf.txt"
TXT_ZIP="zip.txt"
# --------- END SETTINGS---------

rm -fr $DIR_TMP
mkdir -pv $DIR_TMP
rm -fr $DIR_PDF
mkdir -pv $DIR_PDF
rm -fr $DIR_ZIP
mkdir -pv $DIR_ZIP

if [ $DIFFCHECK -eq 1 ]; then
	ls *.msg > $TXT_MSG
fi

for f1 in *.msg; do
	rm -fr $DIR_TMP*
	retry=1
	found_pdf=0
	found_zip=0
        while  [ $retry -lt $MAXRETRY ]; do
		echo "$retry Convert \"$f1\"";
		msgconvert "$f1"
		f2=$(basename "$f1")
		f2="${f2%.*}.eml"
		ripmime -i "$f2" -d $DIR_TMP;
		if [ -f $DIR_TMP*.pdf ]; then
			pdftotext $DIR_TMP*.pdf &> /dev/null
			if [ $? -eq 0 ]; then
				echo $DIR_TMP*.pdf was ok;
				found_pdf=1
				mv -v $DIR_TMP*.pdf $DIR_PDF
				break;
			else
				echo $DIR_TMP*.pdf is broken;
				rm $DIR_TMP*.pdf
			fi;
		fi
		if [ -f $DIR_TMP*.zip ]; then
			found_zip=1
			mv -v $DIR_TMP*.zip $DIR_ZIP
			break;
		fi
		let retry+=1
	done

	if [ $DIFFCHECK -eq 1 ]; then
		if [ $found_pdf -eq 1 ]; then
			echo "FOUND PDF"
			echo "$f1" >> $TXT_PDF
		fi
		if [ $found_zip -eq 1 ]; then
			echo "FOUND ZIP"
			echo "$f1" >> $TXT_ZIP
		fi
	fi

	rm -f "$f1"
	rm -f "$f2"
done

rm -fr $DIR_TMP

if [ $DIFFCHECK -eq 1 ]; then
	echo "-- DIFF PDF --"
	diff $TXT_MSG $TXT_PDF
	echo "-- DIFF ZIP --"
	diff $TXT_MSG $TXT_ZIP
fi
