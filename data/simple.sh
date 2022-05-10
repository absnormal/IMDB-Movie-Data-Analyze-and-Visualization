#!/bin/zsh

sed 's/\[[^]]*\]/[]/2g' tmdb_5000_movies.csv > 1.csv
sed -i 's/"\[\]"/\[\]/g' 1.csv
sed -i 's/\[\]/"\[\]"/g' 1.csv
sed -i 's/,,/,null,/g' 1.csv
sed -i 's/\]",.*"\[//g' 1.csv
sed 's/.*\[//g' 1.csv > 2.csv
sed -i 's/].*//g' 2.csv
sed -i ':a;N;$!ba;s/{[^}]*}, /&\n/g' 2.csv
sed -i 's/, $//g' 2.csv
sort 2.csv | uniq > genres
rm 2.csv
sed -i 's/{""id"": [0-9]*, ""name"": ""//g' 1.csv
sed -i 's/""}//g' 1.csv
sed -i 's/,"\[/,"/g' 1.csv
sed -i 's/\]",/",/g' 1.csv
