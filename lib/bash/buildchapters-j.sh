#!/bin/bash

# We want to be in the directory in which the HV etext lives.  First we need to
# remove the namespace declarations (find a better solution for that) from a
# copy of the text that we'll actually be working from.

cd ~/git/ratnakara-tei/haravijaya/all
#for i in `echo 01 02 47`
for i in `echo 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 47`
do
echo going to $i
cd ../$i 
pwd
cat ../templates/template-beginning-j.xml > hv-$i-j.txt
xmlstarlet sel -N x="http://www.tei-c.org/ns/1.0" -t -c "//x:div[@n=\"$i\"]" ../all/hv-all-j.xml >> hv-$i-j.txt
cat ../templates/template-end.xml >> hv-$i-j.txt

done
