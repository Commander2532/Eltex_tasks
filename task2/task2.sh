#! /bin/bash

home=$(pwd)

for i in {1..20}
do
	for ((j=i; j>0; j--))
	do
	mkdir $i; cd $i
	done
echo "$i.txt" > $i.txt
cd $home
done

find . -type f -not -name "*4*.txt" -a -not -name "*.sh" -exec rm {} +
filepath=$(find . -name "14.txt")
sed -i "s/$(cat $filepath)/anything/" $filepath
