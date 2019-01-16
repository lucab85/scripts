#!/bin/bash

while IFS= read -r file
do
   pattern="{% include \"web/_shared/rss-widget-updates.html\" %}"
   replacement="{% include \"web/_shared/helpful.html\" %}\n{% include \"web/_shared/rss-widget-updates.html\" %}"
   sed -i "s@$pattern@$replacement@g" $file
done < "list.txt"
