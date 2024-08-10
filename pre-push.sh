#!/bin/bash

BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

PROTECTED_BRANCHES=("master" "main")

if [[ " ${PROTECTED_BRANCHES[@]} " =~ " ${BRANCH_NAME} " ]]; then
    REMOTE_COMMIT=$(git rev-parse origin/${BRANCH_NAME})

    if git rev-list ${REMOTE_COMMIT}..HEAD | grep -q $(git rev-parse develop); then
        echo "PUSH REJECTED: Merges from 'develop' to '${BRANCH_NAME}' are not allowed."
        exit 1
    fi
fi

exit 0