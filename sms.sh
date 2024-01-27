#SMS API Free Mobile
#By Galaad Martineaux (@cursedastronaut on GitHub)

if [ "$1" = "help" ] || [ $# -eq 0 ]
then
	echo "SMS API Free Mobile"
	echo "	--message [message]"
	echo "		Sends the specified message. Must be in ASCII!"
	echo "	--userid [userid]"
	echo "		Will use that used ID."
	echo "	--password [password]"
	echo "		Will use that password."
	echo "All those arguments are mandatory."
	exit
fi

MESSAGE=""
USER=""
PASS=""

#Checks for presence of all mandatory arguments
if [[ "$@" =~ "--message" ]] && [[ "$@" =~ "--userid" ]] && [[ "$@" =~ "--password" ]]; then

	while [[ $# -gt 0 ]]; do
		case "$1" in
			--message)
				if [ -n "$2" ]; then
					MESSAGE="$2"
					echo "The value after --message is: $MESSAGE"
				else
					echo "Error: No value provided after --message."
					exit 1
				fi
				shift 2 # Move to the next set of arguments
				;;
			--userid)
				if [ -n "$2" ]; then
					USER="$2"
					echo "The value after --userid is: $USER"
				else
					echo "Error: No value provided after --userid."
					exit 1
				fi
				shift 2 # Move to the next set of arguments
				;;
			--password)
				if [ -n "$2" ]; then
					PASS="$2"
					echo "The value after --password is: $PASS"
				else
					echo "Error: No value provided after --password."
					exit 1
				fi
				shift 2 # Move to the next set of arguments
				;;
			*)
				shift # Move to the next argument
				;;
		esac
	done

	urlencode() {
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

	FINAL_MSG=$(urlencode "$MESSAGE")

	echo "$URL?user=$USER&pass=$PASS&msg=$FINAL_MSG"

	$CURL -k -X POST "$URL?user=$USER&pass=$PASS&msg=$FINAL_MSG"
else
	echo "Not all mandatory arguments were specified. Please run $0 --help for help."
fi