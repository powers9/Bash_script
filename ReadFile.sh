#!/bin/bash

spath=sourceDir
dpath=destDir
outputFilepath=outoutDir/outputFile.txt

while read -r line; do
    echo "$line" 
pathwithFile=("$spath"/"$line"_*.*)    
echo sourceDirectoryPath: "$spath"
echo srcPathWithFilename: "$pathwithFile[@]}"
for FILE in "${pathwithFile[@]}"
do
if [[-f $FILE ]]; then
echo "$FILE"
"$FILE" >> "$outputFilepath"
fi
done
done < "$dpath"/fileList.txt"
cp "$FILE" "$spath" "$dpath"
else
echo "File not found"
fi
done    
done < readFile path.txt
