CMD=sleep

while sleep 1
do
    ps l | awk '{print $3, $6, $13}' |
    while read PID NICE PROC_CMD
    do
        if [ ${PROC_CMD} == ${CMD} ]
        then 
            if [ "$NICE" -le "4" ]
            then
               kill $PID
            fi
        fi
    done 
done

