#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

chmod 600 wangdoc-deploy-rsa
scp -i wangdoc-deploy-rsa -r dist/* wangdoc@wangdoc.com:/var/www/html
