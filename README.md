# Google Drive Mount ###

This is a simple shell script to mount a GoogleDrive volume

## Installing google-drive-ocamlfuse on Ubuntu or Linux Mint, you can use its official PPA as follows.
$ sudo add-apt-repository ppa:alessandro-strada/ppa
$ sudo apt-get update
$ sudo apt-get install google-drive-ocamlfuse 

## Adding to PATH
$ vi ~/.bashrc

PATH=$PATH:$HOME/.opam/system/bin
export PATH 

$ source ~/.bashrc 

## Setting up User
$ sudo groupadd fuse
$ sudo usermod -a -G fuse <user_name>
$ exec su -l $USER

## Configure google-drive-ocamlfuse
$ google-drive-ocamlfuse

This will open up a web browser window, asking you to log in to your Google account. After logging in, you will see the following screen, requesting for permission. Click on "Accept".
Next you have to grant "gdfuse OAuth2 Endpoint" access to your Google account. For that, log in to your Google account again.
Click on "Allow" button.

## Creating the mount point
$ sudo mkdir /media/psylinux/GoogleDrive/
$ sudo chown -R psylinux:fuse /media/psylinux/GoogleDrive/
$ google-drive-ocamlfuse /media/psylinux/GoogleDrive/

## References
http://xmodulo.com/mount-google-drive-linux.html
http://xmodulo.com/how-to-sync-google-drive-from-the-command-line-on-linux.html
