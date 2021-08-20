#!/bin/bash

# We want to be in the directory in which the HV etext lives.  First we need to
# remove the namespace declarations (find a better solution for that) from a
# copy of the text that we'll actually be working from.

cd ~/git/ratnakara-tei/haravijaya/all
for i in `echo 01`
do
echo going to $i
cd ../$i 
pwd
cat ../templates/template-beginning-sn-757.xml > hv-$i-sn-757.txt
xmlstarlet sel -N x="http://www.tei-c.org/ns/1.0" -t -c "//x:div[@n=\"$i\"]" ../all/hv-all-sn-757.xml >> hv-$i-sn-757.txt
cat ../templates/template-end.xml >> hv-$i-sn-757.txt

done
