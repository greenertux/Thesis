#!/bin/sh
# Created by Tristan Hoffmann 2016-01-02
cd /root/files
for file in *
do
  xsltproc -o "/root/tmp/$file" --html /root/xslt/html-xml_transformation.xslt "$file"
  java -jar /usr/share/java/saxon.jar -s:"/root/tmp/$file" -xsl:/root/xslt/xml-value-split_transformation.xslt -o:"/root/xslt/$file.xml"
  rm -f "/root/tmp/$file"
done