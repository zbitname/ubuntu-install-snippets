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

#### Install the latest stable version of MongoDB
```shell
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
```
[Official manual](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)

#### Install NodeJS
```shell
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
```
