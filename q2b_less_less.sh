CMD=less

ps l h > tmp.txt 

while read LINE
do
  
  proc_cmd=`echo $LINE | awk '{print $13}'` 
 
 if [ ${proc_cmd} == $CMD ]   
 then
       PID=`echo $LINE | awk '{print $3}'`
       kill $PID
  fi
done < tmp.txt  

