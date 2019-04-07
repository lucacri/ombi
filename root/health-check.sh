#!/usr/bin/env bash
LAST_LOG=`ls -Art /config/Logs | tail -n 1`

if grep -q 'database is locked' /config/Logs/$LAST_LOG; then
    echo "Gotta restart this"
    exit 1
fi

timeout 3s curl -fIsS http://localhost:3579 > /dev/null

exit 0