#!/bin/bash
if [ "$#" -ne 2 ]
then
	echo "Usage: $0 token counter"
	exit 1
fi


COUNTER=1
while [  $COUNTER -lt $2 ]; do
	echo Salvo pagina $COUNTER

	URL="http://sfogliatoreweb.ilgiornaledivicenza.it/vpweb/magazines/ASVI/issues/ASML_2015_2015/pdfs/$COUNTER"
	wget \
	 --header="User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36" \
	 --header="Accept-Encoding: gzip, deflate, sdch" \
	 --header="Cookie:thirdparty.check=735; ticket=$1" \
	 $URL \
	-O "$COUNTER.pdf" 
	#curl -O $URL
        let COUNTER=COUNTER+1
done
