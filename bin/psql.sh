#!/bin/bash

SQL=$1

if [ "${SQL}" != "" ]
then
    if [ -f "${SQL}"  ]
    then
        SQL="-f ${SQL}"
    else
        >&2 echo "ERROR! no file ${SQL}"
        exit 1
    fi
fi

psql -U $POSTGRES_USER -d $POSTGRES_DB
