#!/usr/bin/env bash

LOG_FILE="$HOME/.cache/tunet_bash/access.log"

tunet_bash -w &>>$LOG_FILE
if [[ $? -ne 0 ]]; then
    tunet_bash -i -a 6 &>>$LOG_FILE
fi
