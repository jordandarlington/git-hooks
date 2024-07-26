#!/bin/bash

BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

if [ ! -z "$BRANCH_NAME" ] && [ "$BRANCH_NAME" != "HEAD" ] && [ "$SKIP_PREPARE_COMMMIT_MSG" != 1 ]; then
    BRANCH_NAME_IN_COMMIT=$(grep -c "\[$BRANCH_NAME]" $1)
    if [ [-n "$BRANCH_NAME"] ] && [ [$BRANCH_NAME_IN_COMMIT -ge 1] ]; then
        sed -i.bak -e "1s~^~[$BRANCH_NAME]~" $1
    fi
fi