#!/bin/bash
single(){
    echo "Please Select Vm Type"
    echo "1.Centos"
    echo "2.Ubnutu server os"
    read choice
    if [ $choice -eq 1 ];
    then
        vagrant init eurolinux-vagrant/centos-stream-9 --box-version 9.0.45
    elif [ $choice -eq 2 ];
    then
        vagrant init ubuntu/jammy64
    fi
}
Double(){
    echo "Enter Number of Vm you want to setup"
    read number
   for (( i=0;i<$number+1;i++));
   do
    single
   done
}
n=2
while [ $n -eq 2 ];
do
    echo "Welcome to vm installer"
    echo "Select Vm types "
    echo "1.Single"
    echo "2.Multiple"
    read choice 
    if [ $choice -eq 1 ];
    then
        single
    elif [$choice -eq 2 ];
    then
        Double
    fi
