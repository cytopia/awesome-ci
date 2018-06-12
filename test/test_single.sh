#!/usr/bin/env bash

set -e
set -u
set -o pipefail


###
### Define Paths
###
GIT_PATH="$( cd "$(dirname "$0")" ; pwd -P )/.."
ETC_PATH="${GIT_PATH}/etc/awesome-ci.conf"
BIN_PATH="${GIT_PATH}/bin"

TEST_SUCC_PATH="${GIT_PATH}/test/ok"
TEST_FAIL_PATH="${GIT_PATH}/test/err"

# Add dependencies to path
PATH=${GIT_PATH}/dependencies:${PATH}


###
### Check arguments
###
if [ "${#}" -ne "1" ]; then
	>&2 echo "This script requires exactly one argument: ${#} are given."
	exit 1
fi

# Path to binary
BINARY="${BIN_PATH}/${1}"


############################################################
# Functions
############################################################

run () {
	local cmd="${1}"

	>&2 echo "----------------------------------------------------------------------------------------------------"
	>&2 echo "\$ ${cmd}"
	>&2 echo "----------------------------------------------------------------------------------------------------"

	${cmd}
}


############################################################
# Run tests
############################################################


###
### 1. Info
###
COMMAND="${BINARY} --info"
if ! OUT="$( run "${COMMAND}" )"; then
	echo "${OUT}"
	>&2 echo "[Error] 'Info test' failed"
	exit 1
fi
echo "[TEST PASSED]"
echo


###
### 2. Dry
###
if [ "${1}" = "git-ignored" ]; then
	COMMAND="${BINARY} --path=. --dry"
else
	COMMAND="${BINARY} --path=. --config=${ETC_PATH} --dry"
fi
if ! OUT="$( run "${COMMAND}" )"; then
	echo "${OUT}"
	>&2 echo "[TEST FAILED] 'Dry test' failed"
	exit 1
fi
echo "[TEST PASSED]"
echo


###
### 3. Test OK
###
if [ "${1}" != "git-ignored" ] && [ "${1}" != "regex-grep" ] && [ "${1}" != "regex-perl" ]; then

	COMMAND="${BINARY} --path=${TEST_SUCC_PATH} --config=${ETC_PATH}"

	if ! OUT="$( run "${COMMAND} --list" )"; then
		echo "${OUT}"
		>&2 echo "[TEST FAILED] 'Success test' failed"
		exit 1
	fi
	echo "[TEST PASSED]"
	echo

	if ! OUT="$( run "${COMMAND} --verbose" )"; then
		echo "${OUT}"
		>&2 echo "[TEST FAILED] 'Success test' failed"
		exit 1
	fi
	echo "[TEST PASSED]"
	echo

	if ! OUT="$( run "${COMMAND}" )"; then
		echo "${OUT}"
		>&2 echo "[TEST FAILED] 'Success test' failed"
		exit 1
	fi
	echo "[TEST PASSED]"
	echo
fi


###
### 3. Test Failure
###
if [ "${1}" != "git-ignored" ] && [ "${1}" != "regex-grep" ] && [ "${1}" != "regex-perl" ]; then

	COMMAND="${BINARY} --path=${TEST_FAIL_PATH} --config=${ETC_PATH}"

	if ! OUT="$( run "${COMMAND} --verbose" )"; then
		echo "[TEST PASSED]"
		echo
	else
		echo "${OUT}"
		>&2 echo "[TEST FAILED] 'Failure test' failed"
		exit 1
	fi

	if ! OUT="$( run "${COMMAND}" )"; then
		echo "[TEST PASSED]"
		echo
	else
		echo "${OUT}"
		>&2 echo "[TEST FAILED] 'Failure test' failed"
		exit 1
	fi
fi
