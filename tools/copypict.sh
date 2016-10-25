#!/bin/bash
#########################
#  XE Migration Process #
#      Photo Copier     #
# Code by QnA(22904834) #
#      Made by 정인     #
#########################

## XE 정보
# Migrate 전 XE 루트 폴더
oXeRoot="/usr/local/apache2/htdocs/old-xe"
# Migrate 대상 XE 루트 폴더
mXeRoot="/var/www/xe"

## DB 접속 정보
id=root
password=pwd123456

if [[ -z $1 ]] || [[ -z $2 ]] || [[ -n $3 ]]
then
        echo -e "Two argumenets are needed.\nFirst: old moduleNum; Second: new moduleNum\n"
else
        echo -e "Copying $1 Module -> $2 Module"

        if [[ -e $oXeRoot/files/attach/images/$1 ]]
        then
                mkdir $mXeRoot/files/attach/images/$1_old
                cp -R $oXeRoot/files/attach/images/$1/* $mXeRoot/files/attach/images/$1_old/
                chown -R www-data:www-data $mXeRoot/files/attach/images/$1_old/*
                find $mXeRoot/files/attach/images/$1_old -type f -exec chmod 644 {} +
                cp -rp $mXeRoot/files/attach/images/$1_old/* $mXeRoot/files/attach/images/$2/
                rm -rf $mXeRoot/files/attach/images/$1_old
                echo -e "[INFO] Module $1 is copied."

                echo -e 'UPDATE xe_documents SET content = REPLACE(content, "./files/attach/images/'$1'/", "./files/attach/images/'$2'/");\n' > /tmp/query-migration.sql
                echo -e 'UPDATE xe_documents SET content = REPLACE(content, "/files/attach/images/'$1'/", "./files/attach/images/'$2'/");\n' >> /tmp/query-migration.sql
                echo -e 'UPDATE xe_documents SET content = REPLACE(content, "files/attach/images/'$1'/", "./files/attach/images/'$2'/");\n' >> /tmp/query-migration.sql
                mysql -u $id -p$password xe < /tmp/query-migration.sql
		rm /tmp/query-migration.sql
                echo -e "[INFO] DB Complete"
        else
                echo -e "[EROR] Couldn't find module $1\n"
        fi
fi
