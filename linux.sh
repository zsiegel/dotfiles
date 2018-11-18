#!/usr/bin/env bash

#Ubuntu 16.04
export CLOUD_SDK_REPO="cloud-sdk-bionic"

#Google Cloud SDK
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" > /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

#Google Chrome
#echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/#sources.list.d/google-chrome.list
#curl https://dl.google.com/linux/linux_signing_key.pub | apt-key add -

#Kubernetes
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main"  > /etc/apt/sources.list.d/kubernetes.list

#OBS-Studio
add-apt-repository ppa:obsproject/obs-studio

apt update 
apt upgrade -y

apt install -y dconf-editor \
		openjdk-8-jdk \
		git \
		clang \
		bash-completion \
		cmake \
		grep \
		jq \
		ssh \
		google-cloud-sdk \
		s3cmd \
		apt-transport-https \
		kubectl \
		ffmpeg \
		obs-studio \


#Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

apt install -y sublime-text

apt autoremove
apt autoclean
apt clean

