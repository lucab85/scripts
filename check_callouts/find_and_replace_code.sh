#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "Usage: $0 subdir of src/content/"
	exit 1
fi


array=( "à" "è" "é" "ì" "ò" "ù" "\." "\," "\;" "\!" "\-" "\:")

for file in `find src/content/$1/ -name "*.md"`; do
	for c in {a..z} {0..9} {A..Z} "${array[@]}"; do

	  sed -i "s/$c <code>/$c \`/g" $file
	  sed -i "s/$c<code>/$c\`/g" $file
	  
	  sed -i "s/<\/code> $c/\` $c/g" $file
	  sed -i "s/<\/code>$c/\`$c/g" $file
	done
	
done

git checkout "src/content/$1/fundamentals/design-and-ui/input/touch/index.md"
git checkout "src/content/$1/fundamentals/discovery-and-monetization/payment-request/index.md"
git checkout "src/content/$1/fundamentals/getting-started/primers/customelements.md"
git checkout "src/content/$1/fundamentals/getting-started/primers/promises.md"
git checkout "src/content/$1/fundamentals/getting-started/primers/shadowdom.md"
git checkout "src/content/$1/fundamentals/security/credential-management/retrieve-credentials.md"
git checkout "src/content/$1/fundamentals/security/credential-management/store-credentials.md"
git checkout "src/content/$1/tools/chrome-devtools/inspect-styles/edit-dom.md"
git checkout "src/content/$1/tools/chrome-devtools/javascript/index.md"
git checkout "src/content/$1/tools/chrome-devtools/rendering-tools/index.md"
git checkout "src/content/$1/tools/setup/setup-preprocessors.md"
