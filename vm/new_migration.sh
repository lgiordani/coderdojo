#!/bin/bash

if [[ $# -eq 0 ]]; then echo "$0 <migration_name>"; exit 1; fi

exec_dir=$(dirname ${BASH_SOURCE})

unset exit_loop

while [[ -z ${exit_loop} ]]; do
	migration_name="$(date +%Y%m%d%H%M%S)_${1}.sh"
	if [[ ! -f ${exec_dir}/${migration_name} ]]; then exit_loop=1; fi
done

if [[ ! -d "${exec_dir}/migrations" ]]; then mkdir ${exec_dir}/migrations; fi

migration_file="${exec_dir}/migrations/${migration_name}"
echo "New migration created with file ${migration_file}"
touch ${migration_file}
echo "#!/bin/bash" >> ${migration_file}
echo >> ${migration_file}
echo 'exec_dir=$(dirname ${BASH_SOURCE})' >> ${migration_file}
