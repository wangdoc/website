#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

chmod 600 wangdoc-deploy-rsa
# scp -i wangdoc-deploy-rsa -r dist/* "wangdoc@$host_ip":/home/wangdoc/www/www
rsync -avze "ssh -i wangdoc-deploy-rsa" --delete --progress --size-only --omit-dir-times dist/ "wangdoc@$host_ip":/home/wangdoc/www/www/
