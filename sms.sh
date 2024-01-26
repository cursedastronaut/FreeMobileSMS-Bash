MESSAGE="Heya !" #Make sure this is in ASCII.

urlencodae() {
    local string="$1"
    local length="${#string}"
    local result=""

    for ((i = 0; i < length; i++)); do
        local c="${string:i:1}"
        case $c in
            [a-zA-Z0-9.~_-])
                result+="$c"
                ;;
            *)
                printf -v hex "%02x" "'$c"
                result+="%$hex"
                ;;
        esac
    done

    echo "$result"
}


CURL=/usr/bin/curl
URL=https://smsapi.free-mobile.fr/sendmsg

PASS=$(cat password.key)
USER=$(cat userid.key)

FINAL_MSG=$(urlencode "$MESSAGE")

$CURL -k -X POST "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=$FINAL_MSG"