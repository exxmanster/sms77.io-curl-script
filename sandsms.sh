#!/bin/bash

### You can replace this vars
 API_KEY=''
 NUMBER=''
 SMS=''
 FROM=''

###
 INPUT=`echo ${SMS} | sed 's/ /%20/g'`
 REQEST="https://gateway.sms77.io/api/sms?p=${API_KEY}&to=${NUMBER}&text=${INPUT}&from=${FROM}&return_msg_id=1&details=1"
 curl $REQEST
