#!/bin/bash
DebLinuxtools(){
  n=2
  while [ $n -eq 2 ];
  do
    echo "<------------Tool Installer--------------->"
    echo "Please select to install tools"
    echo "1.VirtualBox"
    echo "2.Vagrant"
    echo "3.Git"
    echo "4.Corretojdk"
    echo "5.maven"
    echo "6.Awscli"
    echo "7.Vscode"
    echo "8.sublimetext"
    echo "9.Exit"
    echo "<----------------------------->"
    read choice
    if [ $choice -eq 1 ];
    then
        echo "<------------VirtualBox------------>"
        echo "1.Install"
        echo "2.No Need"
        read fifthchoice
        if [ $fifthchoice -eq 1 ];
        then
           sudo apt update
           sudo apt install virtualbox
        elif [ $fifthchoice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 2 ];
    then
        echo "<-----------------Vagrant-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
            curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
            sudo apt install ./vagrant_2.2.9_x86_64.deb
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 3 ];
    then
        echo "<-----------------Git-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
            apt install git -y
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 4 ];
    then
        echo "<-----------------Corretojdk-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
            sudo apt-get install openjdk-8-jdk
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 5 ];
    then
        echo "<-----------------Maven-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
           sudo apt-get install maven
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 6 ];
    then
        echo "<-----------------Awscli-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
            sudo apt-get install awscli
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 7 ];
    then
        echo "<-----------------Vscode-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
            echo "Please downloand .deb file of vscode from the website "
            echo "Enter the .deb file path"
            read path
            sudo dpkg -i $path 
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 8 ]
    then
        echo "<-----------------Sublime-------------->"
        echo "1.Install"
        echo "2.No Need"
        read choice
        if [ $choice -eq 1 ];
        then
            sudo apt update
            sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
            curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - $ sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
            sudo apt install sublime-text
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    elif [ $choice -eq 9 ];
    then
        exit
    fi
  done
}
echo "<---------Welcome to Installer please select the platform----------->"
echo "1.Debain Linux"
echo "2.Redhat type linux "
echo "3.Macos"
echo "<------------------------------------------------------------------->"
read choice
if [ $choice -eq 1 ];
then
    DebLinuxtools
fi