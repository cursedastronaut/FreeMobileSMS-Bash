MESSAGE="what_you_want_to_send" #Make sure this supports URL syntax


CURL=/usr/bin/curl
URL=https://smsapi.free-mobile.fr/sendmsg

PASS=$(cat sms.key)
USER=$(cat user.key)


$CURL -k -X POST "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=$MESSAGE"