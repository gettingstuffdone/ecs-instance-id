#! /bin/bash
RESULT=$(curl http://localhost:51678/v1/metadata)
sed -i "s/Heading/$RESULT/g" index.html
