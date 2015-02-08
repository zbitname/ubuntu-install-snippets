#!/usr/bin/env bash

# version 1.1.2

variants=$''
aar=$''
install=$''
finstall=user_install.sh

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
        if [[ ${line:0:1} == '#' || -z $line || $line =~ 'apt-get update' ]]
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

$(rm $finstall > /dev/null 2>&1)

echo "#!/usr/bin/env bash" > $finstall

if !($(aptitude show curl > /dev/null 2>&1))
    then echo "sudo apt-get install -y curl" >> $finstall;
fi

if !($(aptitude show software-properties-common > /dev/null 2>&1))
    then echo "sudo apt-get install -y software-properties-common" >> $finstall;
fi

if !($(aptitude show python-software-properties > /dev/null 2>&1))
    then echo "sudo apt-get install -y python-software-properties" >> $finstall;
fi

echo "$aar" >> $finstall
echo "sudo apt-get update" >> $finstall
echo "$install" >> $finstall

chmod +x $finstall