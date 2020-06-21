#!/bin/bash
#
# Copyright 2020 Marcos Azevedo (aka pylinux) : psylinux[at]gmail.com
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# Description:  This script is used to:
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

