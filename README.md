# Ubuntu-settings
Helpful Ubuntu snippents

#### Install CURL
```shell
sudo apt-get install curl
```

#### Install python-software-properties (add-apt-repository)
```shell
sudo apt-get install software-properties-common python-software-properties
```

#### Download and use
```shell
curl -G https://codeload.github.com/zbitname/ubuntu-settings/zip/master > ubuntu-settings.zip
unzip ubuntu-settings.zip
cd ubuntu-settings-master
./install_concat.sh
# Choose needed lines
sudo ./user_install.sh
# Enter root password
```

#### Shell scripts:
- [Git](https://github.com/zbitname/Ubuntu-settings/blob/master/install/git.sh)
- [MongoDB](https://github.com/zbitname/Ubuntu-settings/blob/master/install/mongodb.sh) / [Official manual](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
- [NodeJS](https://github.com/zbitname/Ubuntu-settings/blob/master/install/nodejs.sh)
