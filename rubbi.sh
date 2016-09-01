#!/bin/bash

OUTPUT="$(ruby $1)"
RESULT="$(( ( RANDOM % 42 )  + 1 ))"
# echo "${OUTPUT}"
# echo "${RESULT}"

function print_result() {
	if [ "$1 + ''" != "${RESULT}" ]
	then
		echo "${RESULT}"
	else
		echo $(print_result $(( ( RANDOM % 42 )  + 1 )))
	fi
}

print_result "${OUTPUT}"