#! /bin/bash
RESULT=$(curl http://172.17.0.1:51678/v1/metadata | jq ."ContainerInstanceArn" -r | awk -F/ '{print $NF}' )
echo $(curl http://172.17.0.1:51678/v1/metadata)
echo before result
echo $RESULT
echo after result
sed -i "s/Heading/$RESULT/g" /usr/share/nginx/html/index.html
nginx -g 'daemon off;'
