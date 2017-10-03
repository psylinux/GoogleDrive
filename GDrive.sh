#!/bin/bash
# VBor Cloud Services - http://www.vbor.com.br
# Marcos Azevedo (marcos@vbor.com.br)
# Date: 28/02/2017
#
# Description:  This script is use to:
#               1 - To Sync your folder with Google Drive
#               2 - To mount/umount yout Google Drive Mount Point
#
#               You must set the Environment Variables first in order to use this script                             
#         

GDriveSync="/home/psylinux/GDriveSync"
GoogleDrive="/media/psylinux/GoogleDrive"


echo -e "1 - To Sync Google Drive"
echo -e "2 - To mount/umount Google Drive"
echo -n ">>> "
read option

if [ "$option" == 1 ];then 
	echo -e "Wait a moment... \n"
	cd $GDriveSync;
	grive;
elif [ "$option" == 2 ];then
	if [[ `mount | grep google` ]];
		then fusermount -u $GoogleDrive;
		else google-drive-ocamlfuse $GoogleDrive;
	fi
else echo "!!! Wrong option !!!"
fi

