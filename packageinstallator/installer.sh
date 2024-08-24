#!/bin/bash
tools(){
    echo "Tool Installer--------------->"
    echo "Please select to install tools"
    echo "1.VirtualBox"
    echo "2.Vagrant"
    echo "3.Git"
    echo "4.Corretojdk"
    echo "5.maven"
    echo "6.Awscli"
    echo "7.Vscode"
    echo "8.sublimetext"
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
            choco install virtualbox --version=7.0.8 -y
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
             choco install vagrant --version=2.3.7 -y
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
            choco install git -y
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
            choco install corretto11jdk -y
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
            choco install maven -y
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
            choco install awscli -y
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
            choco install vscode -y
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
            choco install sublimetext3.app -y
        elif [ $choice -eq 2 ];
        then
            pass
        fi
    fi

}
echo "<---------Welcome to Installer please select the platform----------->"
echo "1.Windows"
echo "2.Macos"
echo "3.Linux"
echo "<------------------------------------------------------------------->"
read choice
if [ $choice -eq  1 ];
then
    echo " Please Select if chocolatey installed or not"
    echo "1.Yes"
    echo "2.No"
    read secondchoice
    if [ $secondchoice -eq 1 ];
    then
        tools
    elif [ $secondchoice -eq 2 ];
    then
        echo "------------Checking the execution policy------------"
        Get-ExecutionPolicy
        echo "Please check the text showing on the screen is Allsigned"
        echo "1.Allsigned"
        echo "2.Not Allsigned"
        read perchoice
        if [ $perchoice -eq 1 ];
        then
            Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        elif [ $perchoice -eq 2 ];
        then
            Set-ExecutionPolicy AllSigned
            echo "If it works and the text written on the screen is allsigned press yes if not press 2"
            echo "1.yes"
            echo "2.No"
            read thirdchoice
            if [ $thirdchoice -eq 1 ];
            then
                Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
            elif [ $thirdchoice -eq 2 ];
            then
                Set-ExecutionPolicy Bypass -Scope Process
                echo "Press 1 if it works and 2 if not"
                echo "1.yes"
                echo "2.No"
                read fourthchoice
                if [ $fourthchoice -eq 1 ];
                then
                    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
                elif [ $fourthchoice -eq 2 ];
                then
                    echo "I am sorry please check the error and try to solve it"
                fi
            fi

        fi
    tools
    fi
fi