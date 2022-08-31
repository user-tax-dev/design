#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

if ! hash real-favicon 2>/dev/null; then
npm install -g cli-real-favicon
fi

real-favicon generate faviconDescription.json faviconData.json ../site/public
