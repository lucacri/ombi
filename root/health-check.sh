#!/usr/bin/env bash
LAST_LOG=`ls -Art /config/Logs | tail -n 1`

if grep -q 'database is locked' /config/Logs/$LAST_LOG; then
    echo "Gotta restart this"
    echo "" >  /config/Logs/$LAST_LOG
    rm /config/Schedules.db
    exit 1
fi

exit 0