#!/bin/bash

spath=sourceDir
dpath=destDir
outputFilepath=outoutDir/outputFile.txt
# read file recursively
while read -r line; do
    echo "$line" 
 #append the src directory and file name read from input text   
pathwithFile=("$spath"/"$line"_*.*)    
echo sourceDirectoryPath: "$spath"
echo srcPathWithFilename: "${pathwithFile[@]}"
#for each file in the source directory check if its a valid file then copy it to the destination directory
for FILE in "${pathwithFile[@]}"
do
if [[ -f $FILE ]]
then
echo "$FILE"
cp "$FILE" $spath $dpath
"$FILE" >> "$outputFilepath"
else
echo "File not found"
fi
done    
done < path.txt
