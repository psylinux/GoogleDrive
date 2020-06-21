# Google Drive Mounter

**Google Drive Mounter** is a simple shell script to mount GoogleDrive volume. The advantage of this technique is that doesn't use hard disc space, once it is mounted from the cloud.

## Installing google-drive-ocamlfuse on Ubuntu or Linux Mint, you can use its official PPA as follows.
```bash
$ sudo add-apt-repository ppa:alessandro-strada/ppa
$ sudo apt-get update
$ sudo apt-get install google-drive-ocamlfuse 
```

## Adding to PATH
```bash
$ vi ~/.bashrc
```

**Add the following lines at the end of the .bashrc**
```bash
PATH=$PATH:$HOME/.opam/system/bin
export PATH 
```

Then run
```bash
$ source ~/.bashrc 
```

## Setting up your linux local user
In order to access the mount point you need to setup your local linux user

```bash
$ sudo groupadd fuse
$ sudo usermod -a -G fuse <your_user>
$ exec su -l $USER
```

## Configure google-drive-ocamlfuse
```bash
$ google-drive-ocamlfuse
```

This will open up a web browser window, asking you to log in to your Google account. After logging in, you will see the following screen, requesting for permission. Click on **Accept**.
Next you have to grant **gdfuse OAuth2 Endpoint** access to your Google account. For that, log in to your Google account again.
Click on **Allow** button.

## Creating the mount point
```bash
$ sudo mkdir /media/your_user/GoogleDrive/
$ sudo chown -R your_user:fuse /media/psylinux/GoogleDrive/
$ google-drive-ocamlfuse /media/your_user/GoogleDrive/
```

## References
http://xmodulo.com/mount-google-drive-linux.html

http://xmodulo.com/how-to-sync-google-drive-from-the-command-line-on-linux.html
