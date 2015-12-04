#!/bin/bash

version=$(cat version.txt)

if [[ -z $(which atom) ]]; then
    echo "Installing the Atom editor, please provide the root password when asked."
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom
fi

coderdojo_dir=${HOME}/coderdojo
html_adventure_dir=${coderdojo_dir}/html_adventure

echo "Installing Atom packages..."
apm_install_list=""
for i in linter linter-htmlhint browser-plus preview-plus project-manager; do
    if [[ -z $(apm list -ib | grep -E "${i}@") ]]; then
        echo "  * ${i}"
        apm_install_list="${apm_install_list} ${i}"
    fi
done
if [[ ! -z ${apm_install_list} ]]; then
    apm install ${apm_install_list}
fi

if [[ ! -d ${coderdojo_dir} ]]; then
    echo "Creating directory ${coderdojo_dir}..."
    mkdir ${coderdojo_dir}
fi

if [[ -d ${html_adventure_dir} ]]; then
    rm -fR ${html_adventure_dir}
fi

echo "Creating directory ${html_adventure_dir}..."
mkdir ${html_adventure_dir}

echo
echo "Copying tutorial files..."
for i in "tutorial" "part1" "part2"; do
    cp -R ${i} ${html_adventure_dir}
done

echo
echo "Adjusting tutorial files to reflect the local installation..."
for i in $(find ${html_adventure_dir} -iname "*.html"); do
    echo "  * Processing ${i}"
    cat ${i} | sed -r -e s,"##base_dir##","${html_adventure_dir}", -e s,"##version##","${version}", > ${i}.tmp
    mv ${i}.tmp ${i}
done

echo
echo "Creating Atom projects list..."
cat "installer/projects.cson" | sed -r -e s,"##base_dir##","${html_adventure_dir}", > ~/.atom/projects.cson

echo
echo "Configuring Atom..."
cat "installer/config.cson" >> ~/.atom/config.cson

echo
echo "Creating bookmarks file..."
bookmarks_file=${html_adventure_dir}/bookmarks.html

touch ${bookmarks_file}

cat "installer/bookmarks_header.html" >> ${bookmarks_file}

echo "        <DT><A HREF=\"file://${html_adventure_dir}/tutorial/index.html\">Tutorial</A>" >> ${bookmarks_file}
echo "        <DD>Il tutorial HTML" >> ${bookmarks_file}

echo "        <DT><A HREF=\"file://${html_adventure_dir}/part1/index.html\">Parte 1</A>" >> ${bookmarks_file}
echo "        <DD>La prima parte" >> ${bookmarks_file}

echo "        <DT><A HREF=\"file://${html_adventure_dir}/part2/01.html\">Parte 2</A>" >> ${bookmarks_file}
echo "        <DD>La seconda parte" >> ${bookmarks_file}

echo "        <DT><A HREF=\"file://${html_adventure_dir}/part3/fantasy/01.html\">Parte 3 - fantasy</A>" >> ${bookmarks_file}
echo "        <DD>La terza parte" >> ${bookmarks_file}

echo "        <DT><A HREF=\"file://${html_adventure_dir}/part3/scifi/01.html\">Parte 3 - fantascienza</A>" >> ${bookmarks_file}
echo "        <DD>La terza parte" >> ${bookmarks_file}

echo "        <DT><A HREF=\"file://${html_adventure_dir}/part3/adventure/01.html\">Parte 3 - avventura</A>" >> ${bookmarks_file}
echo "        <DD>La terza parte" >> ${bookmarks_file}

cat "installer/bookmarks_footer.html" >> ${bookmarks_file}

echo
echo "Installation succesful"
echo "You will find everything in the directory ${html_adventure_dir}"
echo "IMPORT in Firefox the bookmarks file ${bookmarks_file} and move the imported directory into the bookmark bar."
echo