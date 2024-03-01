#!/bin/bash

for file in $(ls)
do
	if [ -f $file ]
	then
		line_count=$(wc -l < $file)
	        if [ $line_count -lt 2 ]
		then
			rm $file
			echo "Fisierul $file a fost sters"
		fi
        fi
done
echo "Proces de stergere finalizat"