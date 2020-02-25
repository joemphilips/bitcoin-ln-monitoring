#!/usr/bin/env bash

if [ ! -v DATADIR_ROOT ]
then
    echo "please set DATADIR_ROOT before running"
    exit 1;
fi

if [ -z "$1" ]
  then
    echo "No argument supplied"
    echo "Try for example specifying the word 'status'"
    exit 1;
fi


cookieBase64=`sudo cat ${DATADIR_ROOT}/.nbxplorer/Main/.cookie | base64 -w 0`
curl -H "Authorization: Basic ${cookieBase64}" http://localhost:32838/v1/cryptos/BTC/$1
