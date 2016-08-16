#!/bin/sh


MY_PATH=
MY_EXT="htm,htm,php"
MY_IGN=
MY_DRY=0
MY_LST=0


# Regex to scan for inline JS
MY_REG="[[:space:]]+on(abort|afterprint|beforeprint|beforeunload|blur|canplay|canplaythrough|change|click|contextmenu|copy|cuechange|cut|dblclick|drag|dragend|dragenter|dragleave|dragover|dragstart|drop|durationchange|emptied|ended|error|error|error|focus|hashchange|input|invalid|keydown|keypress|keyup|load|loadeddata|loadedmetadata|loadstart|message|mousedown|mousemove|mouseout|mouseover|mouseup|mousewheel|offline|online|pagehide|pageshow|paste|pause|play|playing|popstate|progress|ratechange|reset|resize|scroll|search|seeked|seeking|select|show|stalled|storage|submit|suspend|timeupdate|toggle|unload|volumechange|waiting|wheel)[[:space:]]*="



print_usage() {

	echo "${0} [--extension=tpl,htm,html,php,...] [--ignore=dir1,dir2] --path=dir [--dry] [--list]"
	echo
	echo "Scan files for inline javascript."
	echo
	echo "Required options"
	echo "    --path=          Specify directory where to scan."
	echo
	echo
	echo "Optional"
	echo "    --extension=     Comma separated list of file extensions."
	echo "                     Defaults to 'htm,html,php' if not specified."
	echo
	echo "    --ignore=        Comma separated list of ignore pattern for directories."
	echo "                     Directories must be specified from the starting location of --path."
	echo "                     Example: foor/bar folder inside /var/www"
	echo "                     --path=/var/www --ignore=foo/bar"
	echo
	echo "    --dry            Don't do anything, just display the commands."
	echo
	echo "    --list           Instead of searching inside the files, just display the filenames"
	echo "                     that would be found by --path, --extension and --ignore"
	echo
	echo "    --help           Show help screen."
}




while [ $# -gt 0  ]; do
	case "${1}" in

		# ----------------------------------------
		--path=*)
			MY_PATH="$( echo "${1}" | sed 's/--path=//g' )"
			;;

		# ----------------------------------------
		--extension=*)
			MY_EXT="$( echo "${1}" | sed 's/--extension=//g' )"
			;;

		# ----------------------------------------
		--ignore=*)
			MY_IGN="$( echo "${1}" | sed 's/--ignore=//g' )"
			;;

		# ----------------------------------------
		--dry)
			MY_DRY=1
			;;

		# ----------------------------------------
		--list)
			MY_LST=1
			;;

		# ----------------------------------------
		--help)
			print_usage
			exit 0
			;;

		# ----------------------------------------
		*)
			echo "Invalid argument: ${1}"
			echo "Type '${0} --help' for available options."
			exit 1
			;;
	esac
	shift
done


if [ "${MY_PATH}" = "" ]; then
	echo "--path not specified"
	exit 1
fi


#
# 'find' pattern for file extensions
#
NAME_PATTERN="\( -iname '*.$(echo "${MY_EXT}" | sed "s/,/' -o -iname '*\./g")' \)"


#
# 'find' pattern for ignores/excludes
#
if [ "${MY_IGN}" != "" ]; then
	EXCL_PATTERN="-not \( -path \"${MY_PATH}/$(echo "${MY_IGN}" | sed "s|,|*\" -o -path \"${MY_PATH}/|g")*\" \)"
else
	EXCL_PATTERN=""
fi


#
# Show files or grep in found files?
#
if [ "${MY_LST}" = "1" ]; then
	MY_CMD="find ${MY_PATH} ${NAME_PATTERN} ${EXCL_PATTERN} -print"
else
	MY_CMD="find ${MY_PATH} ${NAME_PATTERN} ${EXCL_PATTERN} -exec grep -inHE '${MY_REG}' '{}' \;"
fi

# Dry mode?
if [ "${MY_DRY}" = "1" ]; then
	echo "${MY_CMD}"
	exit 0
fi


echo "${MY_CMD}"
output="$(eval "${MY_CMD}")"

# If showing files only, exit normally
if [ "${MY_LST}" = "1" ]; then
	echo "${output}"
	exit 0
fi


if [ "${output}" != "" ]; then
	echo "${output}"
	echo "[ERR] Inline JS found."
	exit 1
else
	echo "[OK] No inline JS found."
	exit 0
fi

