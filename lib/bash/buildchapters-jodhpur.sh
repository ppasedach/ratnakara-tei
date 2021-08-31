#!/bin/bash

# We want to be in the directory in which the HV etext lives.  First we need to
# remove the namespace declarations (find a better solution for that) from a
# copy of the text that we'll actually be working from.

cd ~/git/ratnakara-tei/haravijaya/all
for i in `echo 01 03 47`
do
echo going to $i
cd ../$i 
pwd
cat ../templates/template-beginning-jodhpur.xml > hv-$i-jodhpur.txt
xmlstarlet sel -N x="http://www.tei-c.org/ns/1.0" -t -c "//x:div[@n=\"$i\"]" ../all/hv-all-jodhpur.xml >> hv-$i-jodhpur.txt
cat ../templates/template-end.xml >> hv-$i-jodhpur.txt

done
