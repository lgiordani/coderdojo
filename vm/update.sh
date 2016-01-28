#!/bin/bash

exec_dir=$(dirname ${BASH_SOURCE})
registry="${exec_dir}/registry.list"
log="${exec_dir}/update.log"

if [[ ! -f ${registry} ]]; then touch ${registry}; fi
if [[ ! -f ${log} ]]; then touch ${log}; fi

echo "(date +%Y%m%d%H%M%S):Execution" >> ${log}

if [[ ! $(ping -c 1 -w 2 www.google.com) ]]; then
    zenity --error --text "Check your internet connection"
    exit 1
    echo "(date +%Y%m%d%H%M%S):Aborted due to missing Internet connection" >> ${log}
fi

for migration in $(find ${exec_dir}/migrations -iname "*.sh" | sort)
do
    migration_name=$(basename ${migration} | sed s,"\.sh",,)
    if [[ ! -z $(grep -E "^${migration_name}$" ${registry}) ]]; then
        echo "(date +%Y%m%d%H%M%S):Skipping already executed ${migration}" >> ${log}
        continue
    fi
    
    echo "Running ${migration}"
    echo "----------------------------------------------"
    echo
    echo "(date +%Y%m%d%H%M%S):Running migration ${migration}" >> ${log}
    bash ${migration}
    echo
    echo
    echo "${migration_name}" >> ${registry}

done

