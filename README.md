# Helpful Ubuntu install snippets

#### Downloading and usage
```shell
curl -G https://codeload.github.com/zbitname/ubuntu-install-snippets/zip/master > ubuntu-install-snippets.zip
unzip ubuntu-install-snippets.zip
cd ubuntu-install-snippets-master
./install_concat.sh
# Choose needed lines
sudo ./user_install.sh
# Enter root password if need
```

Auto install packages `curl`, `software-properties-common` and `python-software-properties` if need.

#### Shell scripts:
- [Git](/install/git.sh)
- [MongoDB](/install/mongodb.sh) / [Official manual](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
- [NodeJS](/install/nodejs.sh)
- [Git flow](/install/git-flow.sh)
