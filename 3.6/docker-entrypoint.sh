#!/bin/bash

SERVERS=""
for (( i=0; i>-1; i++ ))
do
	server=`eval echo '$'"SERVER_$i"`
	if [ -z $server ];then
		break
	fi
	SERVERS=${SERVERS}" --server $server"
done

CMD="${SERVERS}"
if [ $USERNAME ];then
   CMD=${CMD}" --username $USERNAME"
fi
if [ $PASSWORD ];then
   CMD=${CMD}" --password $PASSWORD"
fi
exec spiderkeeper ${CMD}
