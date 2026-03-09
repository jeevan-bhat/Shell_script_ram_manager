#!/bin/bash

Ram_manager=$(free -mt | grep "Total" | awk '{print  $3}')

if [[ $? == 0 ]]
then
	if [[ $Ram_manager -lt 500 ]]
	then
		echo " Warning ! Ram over usage alert "
		echo " servillance needed !"
		exit 1
	else
		echo " Ram usage unnder control !"
		echo " ram  free $Ram_manager "
		exit 1
	fi
else
	echo " command not found ! "
	echo " fatal error "
fi





