#!/bin/bash
createRSA ( ) {
	read -p "enter your_email@example.com : " email
	ssh-keygen -t rsa -C  $email
}

number=$(ls -lR ~/.ssh|grep "id_*"|wc -l)
if [ $number  -lt 1 ];then
createRSA
fi
