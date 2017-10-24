#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

scp -i wangdoc-deploy-rsa -r dist/* wangdoc@wangdoc.com:/var/www/html
