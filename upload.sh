#!/bin/sh
#
#  This will upload the report to https://www.huber.embl.de/users/whuber/pca-animation/
#
chmod 644 index.html
find index_files -type d -exec chmod 755 {} \;
find index_files -type f -exec chmod 644 {} \;
rsync -rvlpt index.html index_files wh.css datatransfer.embl.de:/g/huber/www-huber/users/whuber/pca-animation/

