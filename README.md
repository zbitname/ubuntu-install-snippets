# Ubuntu-settings
Helpful Ubuntu snippents

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

Auto install packages `curl`, `software-properties-common` and `python-software-properties` if need.

#### Shell scripts:
- [Git](/install/git.sh)
- [MongoDB](/install/mongodb.sh) / [Official manual](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
- [NodeJS](/install/nodejs.sh)
- [Git flow](/install/git-flow.sh)
