#!/bin/bash

if [[ ! $(whoami) == "root" ]]; then zenity --error --text "You must be root"; exit 1; fi

if [[ ! $(ping -c 1 -w 2 www.google.com) ]]; then zenity --error --text "Check your internet connection"; exit 1; fi

exec_dir=$(dirname ${BASH_SOURCE})
registry="${exec_dir}/registry.list"

if [[ ! -f ${registry} ]]; then touch ${registry}; fi

for migration in $(find ${exec_dir}/migrations -iname "*.sh" | sort)
do
	migration_name=$(basename ${migration} | sed s,"\.sh",,)
	if [[ ! -z $(grep -E "^${migration_name}$" ${registry}) ]]; then continue; fi
	
	echo "Running ${migration}"
	echo "----------------------------------------------"
	echo
	bash ${migration}
	echo
	echo
	echo "${migration_name}" >> ${registry}

done

