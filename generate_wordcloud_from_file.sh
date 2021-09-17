#!/usr/bin/bash
counter=1
while read line; do
    wget -O /home/rayyala/TRGN510/assignments/trgn_wordcloud/current_pages/file${counter}.html ${line}
    ~/bin/html2text.py /home/rayyala/TRGN510/assignments/trgn_wordcloud/current_pages/file${counter}.html >> /home/rayyala/TRGN510/assignments/trgn_wordcloud/my_current.txt
    ~/.local/bin/wordcloud_cli --text /home/rayyala/TRGN510/assignments/trgn_wordcloud/my_current.txt --imagefile /home/rayyala/public_html/wordcloud.png
    counter=$[${counter} +1]
done < /home/rayyala/TRGN510/assignments/trgn_wordcloud/my_webpages.txt 
echo "Successfully run for $USER";
