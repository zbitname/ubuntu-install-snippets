#!/usr/bin/env bash

variants=$''
aar=$''
install=$''

for f in ./install/*.sh
do
    name=`echo \`expr match "$f" '.*install/\(.*\)\.sh'\``
    variants=" $variants $name off"
done

results=$(whiptail --title "Check scripts" --noitem --separate-output --checklist "Choose:" 20 78 15 $variants 3>&1 1>&2 2>&3)

for item in $results
do
    while read line
    do
        if [[ ${line:0:1} == '#' || -z $line || $line == 'apt-get update' ]]
            then continue;
        fi

        if [[ $line =~ "add-apt-repository" || $line =~ "echo 'deb" ]]
            then
                aar="$aar"$'\n'"$line"
                continue;
        fi

        install="$install"$'\n'"$line"
    done <"./install/$item.sh"
done

echo "#!/usr/bin/env bash" > result.sh
echo "$aar" >> result.sh
echo "apt-get update" >> result.sh
echo "$install" >> result.sh