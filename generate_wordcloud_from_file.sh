#!/usr/bin/bash
counter=1
while read line; do
    wget -O /home/rayyala/TRGN510/assignments/trgn_wordcloud/current_pages/file${counter}.html ${line}
    html2text.py /home/rayyala/TRGN510/assignments/trgn_wordcloud/current_pages/file${counter}.html >> my_current.txt
    wordcloud_cli --text my_current.txt --imagefile ~/public_html/wordcloud.png
    counter=$[${counter} +1]
done < my_webpages.txt 
echo "Successfully run for $USER";
