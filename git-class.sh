memory starts from 0 (zero) in linux 

ip a <-- to know the ip address of the server 
ip addr <-- to know the ip address of the server 
ip address <-- to know the ip address of the server 
ifconfing <-- (this command won't work in run-level-3') its works in run-level -5 
who am i <-- by this command we can know the present using user name 
whomai <-- by this command we can know the present using user name 
cat /etc/os-release <- by this command we can know the OS Version and Name of the Operating System . 
cat /etc/redhat-release <- by this command we can know the OS Version and Name of the Operating System . 
hostnamectl <- by this command we can know the OS Version and Name of the Operating System . 
uname -r <--by this command we can know the OS Kernal Version.
uname -a <-- by this command we can know os-type, hostname, Kernal Version, date of release,Archt...
hostname <-- by this command we can see the server or hostname
hostnamectl set-hostname <server-name/hostname of server> this command used for to set the hostname to partuclar server ip address

  example:
   hostnamectl set-hostname ltserver 
  exec bash / su root <-- to update shell/Kernal 
  hostname   <-- see the line number 12. 
===================
history  <-- this command used for to list all used commands list 
history -c  <--this command used for to clear the history.
clear <-- this command ued for to clear buffer memory. 

#run levels  

runlevel <-- this command used for to know the present using run-level

  run-level 0: <-- this command used for to shoutdown the OS or halt the OS
  example :
  init 0 

  run-level 1: <-- single user mode and it used for to manage OS
	example :
  	init 1
  

  run-level 2: <-- multi-user without network
  example :
  init 2 


  run-level 3:  <-- this command works on multi-user with network. and this is the default run-level in OS
	example :
	  init 3 
  

  run-level 4:  <-- this runlevel used in R & D 
  example :
  init 4 


  run-level 5:  <-- This run-level used for to run the OS In GUI (XI)
	example :
	  init 5 
  


  run-level 6:  <-- this runlevel used for to reboot/restart the server. 
  	example :
	  init 6 



our Regular commands are:

 run-level -0 
 run-level -3
 run-level -5
 run-level -6 



-------------------
yum <-- by this command we can install/uninstall/update/upgrade/downgrade the packages

#to install Server with GUI 
yum groupinstall "Server with GUI" -y 

tty <-- this command used for to know the present using terminal number 

cat /etc/passwd <-- this command used for to list all existed users list. 

 note:
  users are 3 types:
   1. Root User   <-- plase is 0
   2. System Users <-- starts from 1  and ends at 999
   3. Normal Users  <--starts from 1000 ends upto 4B or in Older Version of OS (65535)

===================================================================

here / is root user  and its having one directoy with name of root (/root)
================================================================================

cd <-- this command used for to enter into child directoy or else to switch another directoy 

Syntax:

cd /directoy-name or /path 


-----------> to enter into child directoy
  


cd .. <-- this command used for to come out from the child directoy. 

  <-------- to come from the child directoy

Syntax/example:

 cd ..    <-- by this command we can come only one child directoy at a time. 

 cd ../../../  by this command we can come from multiple directories at a time. 


--------------------------------------------------------------
=============================================
31-07-2024- Class:
=============================================

uname 
 uname
uname -a
hostname
hostnamectl
df -h
lsblk
fdisk -l
du -sh /
du -sh /opt
du -sh /root
du -sh /etc
du -sh /boot
du -sh /opt/tomcat
du -sh /opt/jenkins.war
parted -l
free
free -b
free -k
free -m
free -g
free -h

vmstat
vmstat 3
top
yum install epel-release -y
yum install htop -y
htop
ifconfig
ip a
ip a | grep inet
ss -tuln
yum install net-tools -y
lsusb
lscpu
dmidecode
iostat
netstat
vmstat
iptables -L
iptables -F
iptables -L
sestatus
yum install dmidecode -y

[root@gitserver opt]#
[root@gitserver opt]# parted -l
Model: VMware Virtual NVMe Disk (nvme)
Disk /dev/nvme0n1: 53.7GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      1049kB  1075MB  1074MB  primary  xfs          boot
 2      1075MB  21.5GB  20.4GB  primary               lvm


Warning: Unable to open /dev/sr0 read-write (Read-only file system).  /dev/sr0
has been opened read-only.
Model: NECVMWar VMware IDE CDR10 (scsi)
Disk /dev/sr0: 2060MB
Sector size (logical/physical): 2048B/2048B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 2      28.7MB  57.9MB  29.1MB  primary               esp


Error: /dev/nvme0n2: unrecognised disk label
Model: VMware Virtual NVMe Disk (nvme)
Disk /dev/nvme0n2: 21.5GB
Sector size (logical/physical): 512B/512B
Partition Table: unknown
Disk Flags:

[root@gitserver opt]#


--------------------------------------------------------------
=============================================
1-08-2024- Class:

=============================================

User and Group Concept:
---------------------------
to list all existed users:

Example: 

[root@buildserver bin]# cat /etc/passwd   <-- command to list all existed users 

root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:65534:65534:Kernel Overflow User:/:/sbin/nologin
systemd-coredump:x:999:997:systemd Core Dumper:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
tss:x:59:59:Account used for TPM access:/:/usr/sbin/nologin
sssd:x:998:995:User for sssd:/:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/usr/share/empty.sshd:/sbin/nologin
systemd-oom:x:993:993:systemd Userspace OOM Killer:/:/usr/sbin/nologin
cloudgen:x:1000:1000:CloudGen:/home/cloudgen:/bin/bash
polkitd:x:992:992:User for polkitd:/:/sbin/nologin
rtkit:x:172:172:RealtimeKit:/proc:/sbin/nologin
pipewire:x:991:991:PipeWire System Daemon:/run/pipewire:/usr/sbin/nologin
geoclue:x:990:990:User for geoclue:/var/lib/geoclue:/sbin/nologin
flatpak:x:989:989:User for flatpak system helper:/:/sbin/nologin


[root@buildserver bin]#

----------------------------------------------
by filtering the partuclar user-name by grep command:

Syntax: 
cat /etc/passwd | grep user-name

Example:

[root@buildserver bin]# cat /etc/passwd | grep cloudgen

cloudgen:x:1000:1000:CloudGen:/home/cloudgen:/bin/bash

[root@buildserver bin]#



id <-- this command used for to know the default user id 

here default user is root 

example:

[root@buildserver bin]# id
uid=0(root) gid=0(root) groups=0(root) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

[root@buildserver bin]#

id user-name <-- by this command we can get the partuclar user id & its group id 

example:

[root@buildserver bin]# id cloudgen
uid=1000(cloudgen) gid=1000(cloudgen) groups=1000(cloudgen),10(wheel)

[root@buildserver bin]#

----------------------------------------
user creation:

Syntax: 1
useradd user-name(should be unique-name)

Example:

useradd ravindra 


Syntax: 2
adduser user-name(should be unique-name)

Example:

adduser cloudravi


------------------------------
users home directoy:

/home 

Examples:  

[root@buildserver opt]# cat /etc/passwd | grep 1000
cloudgen:x:1000:1000:CloudGen:/home/cloudgen:/bin/bash
[root@buildserver opt]# cat /etc/passwd | grep 1001
ravindra:x:1001:1001::/home/ravindra:/bin/bash
[root@buildserver opt]# cat /etc/passwd | grep 1002
cloudravi:x:1002:1002::/home/cloudravi:/bin/bash
[root@buildserver opt]#

------------------------------------------------
list all normal users home directoy:

Example:

ll /home 

[root@buildserver opt]# ll /home
total 0
drwx------. 2 cloudgen  cloudgen  62 Mar 16 10:22 cloudgen
drwx------. 2 cloudravi cloudravi 62 Aug  1 21:23 cloudravi
drwx------. 2 ravindra  ravindra  62 Aug  1 21:21 ravindra

-----------------------------------
for root user: 
----------------------------------

[root@buildserver opt]# cat /etc/passwd | grep root
root:x:0:0:root:/root:/bin/bash
operator:x:11:0:operator:/root:/sbin/nologin

[root@buildserver opt]#

---------------------------------------
list all passwords for root and normal usres: 

cat /etc/shadow <-- this command used for to see or list passwords for all types of users: 

Example:

[root@buildserver opt]# cat /etc/shadow
root:$6$aoORJ5sx38BZxgo1$nRWc/cqIN1Qg0R2DJ6OPTZiTwrVhFOaTP1ZVtHveHsl7k9BagJszYL4lZ7Ql.4vyOSIQ79hU7tTTiR7HbAue6.::0:99999:7::: <-- this user having password 
bin:*:19469:0:99999:7:::
daemon:*:19469:0:99999:7:::
adm:*:19469:0:99999:7:::
lp:*:19469:0:99999:7:::
sync:*:19469:0:99999:7:::
shutdown:*:19469:0:99999:7:::
halt:*:19469:0:99999:7:::
mail:*:19469:0:99999:7:::
operator:*:19469:0:99999:7:::
games:*:19469:0:99999:7:::
ftp:*:19469:0:99999:7:::
nobody:*:19469:0:99999:7:::
systemd-coredump:!!:19798::::::
dbus:!!:19798::::::
tss:!!:19798::::::
sssd:!!:19798::::::
sshd:!!:19798::::::
systemd-oom:!*:19798::::::
cloudgen:$6$XfC.sFIpu3hTVrf2$7o5HmcA89/TgIdj1iIYKa7Mo16zoARazRTZR7YatunkY08nrhIsF.X8nip509QL7Voysy0ubdJip9rP5FbIEs.::0:99999:7:::   <-- this user having password 
polkitd:!!:19936::::::
rtkit:!!:19936::::::
pipewire:!!:19936::::::
geoclue:!!:19936::::::
flatpak:!!:19936::::::
ravindra:!!:19936:0:99999:7:::
cloudravi:!!:19936:0:99999:7:::
[root@buildserver opt]#

-------------------------------------------------------
setting the password to users:

Syntax:

passwd user-name 
Changing password for user user-name
New password: xxxxxx

BAD PASSWORD: The password is a palindrome
Retype new password: xxxxxx
passwd: all authentication tokens updated successfully.
[root@buildserver opt]#


Example:

[root@buildserver opt]# passwd ravindra
Changing password for user ravindra.
New password:
BAD PASSWORD: The password is a palindrome
Retype new password:
passwd: all authentication tokens updated successfully.
[root@buildserver opt]#


Note:  here we can't see the passwords what we giving in the command prompt/command line. '

------------------------------------
Delete the Users:


Syntax:

userdel user-name   <-- this command used for to delete existed user 


Example:

[root@buildserver opt]# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:65534:65534:Kernel Overflow User:/:/sbin/nologin
systemd-coredump:x:999:997:systemd Core Dumper:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
tss:x:59:59:Account used for TPM access:/:/usr/sbin/nologin
sssd:x:998:995:User for sssd:/:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/usr/share/empty.sshd:/sbin/nologin
systemd-oom:x:993:993:systemd Userspace OOM Killer:/:/usr/sbin/nologin
cloudgen:x:1000:1000:CloudGen:/home/cloudgen:/bin/bash
polkitd:x:992:992:User for polkitd:/:/sbin/nologin
rtkit:x:172:172:RealtimeKit:/proc:/sbin/nologin
pipewire:x:991:991:PipeWire System Daemon:/run/pipewire:/usr/sbin/nologin
geoclue:x:990:990:User for geoclue:/var/lib/geoclue:/sbin/nologin
flatpak:x:989:989:User for flatpak system helper:/:/sbin/nologin
ravindra:x:1001:1001::/home/ravindra:/bin/bash
cloudravi:x:1002:1002::/home/cloudravi:/bin/bash

<<---- Before Deleting the User 

[root@buildserver opt]# userdel cloudravi   <<-- here we are deleting the user -->>


[root@buildserver opt]# cat /etc/passwd <-- after deleted the user-->>have a look ok ravindra user with id 1002
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:65534:65534:Kernel Overflow User:/:/sbin/nologin
systemd-coredump:x:999:997:systemd Core Dumper:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
tss:x:59:59:Account used for TPM access:/:/usr/sbin/nologin
sssd:x:998:995:User for sssd:/:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/usr/share/empty.sshd:/sbin/nologin
systemd-oom:x:993:993:systemd Userspace OOM Killer:/:/usr/sbin/nologin
cloudgen:x:1000:1000:CloudGen:/home/cloudgen:/bin/bash
polkitd:x:992:992:User for polkitd:/:/sbin/nologin
rtkit:x:172:172:RealtimeKit:/proc:/sbin/nologin
pipewire:x:991:991:PipeWire System Daemon:/run/pipewire:/usr/sbin/nologin
geoclue:x:990:990:User for geoclue:/var/lib/geoclue:/sbin/nologin
flatpak:x:989:989:User for flatpak system helper:/:/sbin/nologin
ravindra:x:1001:1001::/home/ravindra:/bin/bash
[root@buildserver opt]# cat /etc/passwd | grep cloudravi
[root@buildserver opt]# cat /etc/passwd | grep ravindra
ravindra:x:1001:1001::/home/ravindra:/bin/bash

[root@buildserver opt]#



---------------------------------------------------------------
switching to root user to normal user or normal user to root user: 

----------

su <-- this command used for to switch from one user to another user (root to normal or normal to root user )

Syntax:

su user-name

note:  if you/we are switching from root user to normal users  <-- System own't ask password' 

note: if we are switching normal user to root user or normal user to normal user <-- System should ask the password.



[root@buildserver opt]# <-- here # indicates we are in root user 
[ravindra@buildserver opt]$  <-- here $ indicates we are in normal user. 



------------------------------------------------------------------------------

File and directoy Management:



ls <-- this command will list only the files adn directories 
ll <-- this command will list in long list format 
ls -l <-- this command will list in long list format 
ls -a <-- by this command we can list only files and directories along with hidden files and hidden directories
ls -la <-- by this command we can list in long list format files and directories along with hidden files and hidden directories


file or directoy 



Permissions:

1. User 
2. Group 
3. Others 

User=u 
Group=g 
Others=o
ugo 



Read 
Write 
Execute 

read=r  
Write=w
Execute=x 
rwx

Read=4 
Write=2
Execute=1 

rwx
------->>
user grup others 

Full Permissions=777
Full Permissions=rwxrwxrwx
rwxrwxrwx=777
---------=000  <-- nill Permissions to all(ugo)
r--------=400
rw-------=600
rwx------=700

=======================

r--r--r--=444
-w--w--w-=222
--x--x--x=111
rwxrwxrwx=777
rw-rw-rw-=666
r-xr-xr-x=555
r--r--r--=444
-wx-wx-wx=333
-w--w--w-=222
--x--x--x=111
---------=000


-rw-r--r--. 1 root root     16 Mar 16 10:22 adjtime
-rw-r--r--. 1 root root   1529 Jun 23  2020 aliases
drwxr-xr-x. 2 root root   4096 Mar 16 10:20 alternatives
-rw-r--r--. 1 root root    541 Apr 16 06:56 anacrontab
drwxr-x---. 4 root root    100 May 14 21:11 audit

644=rw-r--r--  <-- default Permissions to file 






644
rw-r--r--


drwxr-xr-x. 2 root root 6 Aug  6 23:01 cloud-ravi
-rw-r--r--  <-- default Permissions to file 
-rw-r--r--. 1 root root 0 Aug  6 23:42 java
drwxr-xr-x. 2 root root 6 Aug  6 21:16 raja
-rw-r--r--. 1 root root 0 Aug  6 23:14 ramu
drwxr-xr-x. 2 root root 6 Aug  6 21:14 ravi
drwxr-xr-x. 2 root root 6 Aug  6 23:45 walter
755
[cloud@localhost opt]$

chown

chmod <-- this command used for to change the file and directoy Permissions.

Syntax:
chmod user/grou/other+/- file-name 
chmod u+Permissions file-name 
chmod u+r file-name  <-- here we are giving only read Permissions to user

Example:

chmod u+r  


777=ugo 

From left to Right 
1st 7=4+2+1  <-- user
2nd 7=4+2+1  <-- group
3rd 7=4+2+1  <-- others


========================================
09-08-24
Working with Files:

to create a single empty file : 

Syntax:

touch file-name

Example:


-------------------------------------------------------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-------------------------------------------------------------------------
Git and GitHub:
-------------------------------------------------------------------------

default version of git by yum repo

yum install git -y 

-----------------------------------

custom git version:

yum update -y
hostnamectl set-hostname gitserver 
yum install wget tar make unzip vim -y 
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y
yum install gcc perl-ExtUtils-MakeMaker -y  
cd /opt 
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.46.0.tar.gz
tar -xvf git-2.46.0.tar.gz
ll 
--- output----
git-2.46.0
git-2.46.0.tar.gz

--command----
cd git-2.46.0

---command ---
pwd 
--output---
/opt/git-2.46.0

------command-----
ll   <-- here we/you can see the files in (.c,.h) format. 


#now we are compiling the all source file by below command

------command----
make prefix=/usr/local/git all 

#now we are installing the git software by below command 

------command----
make prefix=/usr/local/git install 



# now we/you have to remove/uninstall older version of git if we have ..! by below command.

------command----

yum remove git -y 

------command----
hash -r <-- to clear hash memory.

------command----
git --version.      <-- now /here we will git command not found.  

------command----
export PATH=$PATH:/usr/local/git/bin'     <--by this command we can set the temperer path. once we restart the git server..! git won't work.. 

#agin we have to apply above command..   <-- but this is not good practice. 

# so that we are putting the path permanently in ~/.bashrc or bash_profile file 



------command----
git --version


----------------------------


git --version  <-- to see the present version of git in present Working server/machine/
git status <-- this command used for to see the present status of working tree. 

Note: working tree = working directoy + staging 

git add  <-- this command used for to send th file/files from working directoy to staging.

Syntax:
  git add file-name   <-- by this command we can add only one file from working directoy to staging.

  example:

  git add f1 

  git status

Note: if you are seeing the files in red color ..! its mean those files are located inside Working Directory. 


---- to add one or more files --------

Syntax: 

git add file-name file-name .. nth file-name


Example:

 git add f2 f3 f4 

Note: if you are seeing the files in red color ..! its mean those files are located inside Working Directory. 


--- to add all files at a time. ------


git add .   <-- this command used for to all files at a time . 
git add --all <-- this command used for to all files at a time . 
git add -A   <-- this command used for to all files at a time . 
git add * <-- by this command we can add all normal files and normal directories 


note:-  by git add * command we cannot add hidden files and hidden directories. 


================================================================================================
------  here is another command for adding the fiels from working directoy to staging -------

git stage file-name
git stage file-name file-name .. nth file-name
git stage . 
git stage * 
git stage --all 
git stage -A

---------------------------
================================================================================
Git 4th Class  history


cd Project-1/
git status
ll
git status
git add f5
git status
git commit -m "test commit on file f5"
git status
ll
git show
git stats
git status
git add f1 f2
git status
git commit -m "test commit on File f1" f1
git status
git add f3 f4 f5
git status
git commit -m "test commit " f2 f3 f4
git status
touch f8 f9 f10
git status
git add .
git status
touch 11 22 33 44 55
git status
git commit -m "test commit"
git status
git add 11 22 33
git status
git reset 11
git status
touch java python oracle mysql nosql
git status
git add 55 java nosql oracle
git status
git reset 22 java nosql
git status
git reset
git status
git add mysql java python oracle 44 33
git status
git reset
git status
git show
git status
git reset --soft HEAD~
git status
git show
git status
git reset @~
git status






==================================================================================
git show <-- this command used for to see the latest commit.




----------------------------

git commit   <-- this command used for to commit/to send the files from staging to committing area. 

Syntax 1:   <-- this one used for to to commit only one file at a time 

git commit -m "any one message" file-name     

Example:

git commit -m "test commit on File1 " f1


Practical Example:

     [root@gitlinux Project-1]# git status
      On branch main
      Your branch is ahead of 'origin/main' by 1 commit.
        (use "git push" to publish your local commits)

      Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
              new file:   f1
              new file:   f2

      Untracked files:
        (use "git add <file>..." to include in what will be committed)
              f3
              f4
              f6
              f7

      [root@gitlinux Project-1]# git commit -m "test commit on File f1" f1
      [main 433b6d5] test commit on File f1
       1 file changed, 0 insertions(+), 0 deletions(-)
       create mode 100644 f1
      [root@gitlinux Project-1]# git status
      On branch main
      Your branch is ahead of 'origin/main' by 2 commits.
        (use "git push" to publish your local commits)

      Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
              new file:   f2

      Untracked files:
        (use "git add <file>..." to include in what will be committed)
              f3
              f4
              f6
              f7

      [root@gitlinux Project-1]#



------------------------------------
------------------------------------

Syntax 2:   <-- this one used for to to commit one  or more file at a time 

git commit -m "any one message" file-name  file-name file-name ..nth file-name


Practical Example:

        [root@gitlinux Project-1]# git status
        On branch main
        Your branch is ahead of 'origin/main' by 2 commits.
          (use "git push" to publish your local commits)

        Changes to be committed:
          (use "git restore --staged <file>..." to unstage)
                new file:   f2

        Untracked files:
          (use "git add <file>..." to include in what will be committed)
                f3
                f4
                f6
                f7

        [root@gitlinux Project-1]#
        [root@gitlinux Project-1]# git status
        On branch main
        Your branch is ahead of 'origin/main' by 2 commits.
          (use "git push" to publish your local commits)

        Changes to be committed:
          (use "git restore --staged <file>..." to unstage)
                new file:   f2

        Untracked files:
          (use "git add <file>..." to include in what will be committed)
                f3
                f4
                f6
                f7

        [root@gitlinux Project-1]# git add f3 f4 f5
        [root@gitlinux Project-1]#
        [root@gitlinux Project-1]# git status
        On branch main
        Your branch is ahead of 'origin/main' by 2 commits.
          (use "git push" to publish your local commits)

        Changes to be committed:
          (use "git restore --staged <file>..." to unstage)
                new file:   f2
                new file:   f3
                new file:   f4

        Untracked files:
          (use "git add <file>..." to include in what will be committed)
                f6
                f7

        [root@gitlinux Project-1]# git commit -m "test commit " f2 f3 f4
        [main f330cbb] test commit
         3 files changed, 0 insertions(+), 0 deletions(-)
         create mode 100644 f2
         create mode 100644 f3
         create mode 100644 f4
        [root@gitlinux Project-1]# git status
        On branch main
        Your branch is ahead of 'origin/main' by 3 commits.
          (use "git push" to publish your local commits)

        Untracked files:
          (use "git add <file>..." to include in what will be committed)
                f6
                f7

        nothing added to commit but untracked files present (use "git add" to track)
        [root@gitlinux Project-1]#

------------------------------------------------------

to commit all files at a time:


Syntax 3:  

  git commit -m "any one message"    <-- here don't' add any file/files , just leave a blank after double quates. 


Note: above commit command works on only staged files. 



Practical Example:

      [root@gitlinux Project-1]# git status
      On branch main
      Your branch is ahead of 'origin/main' by 3 commits.
        (use "git push" to publish your local commits)

      Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
              new file:   f10
              new file:   f6
              new file:   f7
              new file:   f8
              new file:   f9

      Untracked files:
        (use "git add <file>..." to include in what will be committed)
              11
              22
              33
              44
              55

      [root@gitlinux Project-1]# git commit -m "test commit"
      [main e6a56ef] test commit
       5 files changed, 0 insertions(+), 0 deletions(-)
       create mode 100644 f10
       create mode 100644 f6
       create mode 100644 f7
       create mode 100644 f8
       create mode 100644 f9
      [root@gitlinux Project-1]# git status
      On branch main
      Your branch is ahead of 'origin/main' by 4 commits.
        (use "git push" to publish your local commits)

      Untracked files:
        (use "git add <file>..." to include in what will be committed)
              11
              22
              33
              44
              55

      nothing added to commit but untracked files present (use "git add" to track)
      [root@gitlinux Project-1]#

=================================================================================

git reset <-- this command used for to unstage and uncommit the file/files from staging and committing. 


Syntax 1:

git reset file-name   <-- here we are reseting only one file from staging to working directoy. 

Example:

 [root@gitlinux Project-1]# git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   11
        new file:   22
        new file:   33

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        44
        55

[root@gitlinux Project-1]# git reset 11
[root@gitlinux Project-1]# git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   22
        new file:   33

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        11
        44
        55

[root@gitlinux Project-1]#

------------------------------

git reset file-name file-name ... nth file-name

Practical Example:


      [root@gitlinux Project-1]# git status
      On branch main
      Your branch is ahead of 'origin/main' by 4 commits.
        (use "git push" to publish your local commits)

      Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
              new file:   22
              new file:   33
              new file:   55
              new file:   java
              new file:   nosql
              new file:   oracle

      Untracked files:
        (use "git add <file>..." to include in what will be committed)
              11
              44
              mysql
              python

      [root@gitlinux Project-1]# git reset 22 java nosql
      [root@gitlinux Project-1]# git status
      On branch main
      Your branch is ahead of 'origin/main' by 4 commits.
        (use "git push" to publish your local commits)

      Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
              new file:   33
              new file:   55
              new file:   oracle

      Untracked files:
        (use "git add <file>..." to include in what will be committed)
              11
              22
              44
              java
              mysql
              nosql
              python

      [root@gitlinux Project-1]#


---------------------------------------------------------

to reset all files at a time:

git reset .  <-- this command used for to reset all files at a time 


Example:

          [root@gitlinux Project-1]# git status
          On branch main
          Your branch is ahead of 'origin/main' by 4 commits.
            (use "git push" to publish your local commits)

          Changes to be committed:
            (use "git restore --staged <file>..." to unstage)
                  new file:   33
                  new file:   55
                  new file:   oracle

          Untracked files:
            (use "git add <file>..." to include in what will be committed)
                  11
                  22
                  44
                  java
                  mysql
                  nosql
                  python

          [root@gitlinux Project-1]# git reset
          [root@gitlinux Project-1]# git status
          On branch main
          Your branch is ahead of 'origin/main' by 4 commits.
            (use "git push" to publish your local commits)

          Untracked files:
            (use "git add <file>..." to include in what will be committed)
                  11
                  22
                  33
                  44
                  55
                  java
                  mysql
                  nosql
                  oracle
                  python

          nothing added to commit but untracked files present (use "git add" to track)
          [root@gitlinux Project-1]#



---------------------------------------------------------------------------
git reset <-- this command used for to reset all files at a time 

[root@gitlinux Project-1]# git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   33
        new file:   44
        new file:   java
        new file:   mysql
        new file:   oracle
        new file:   python

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        11
        22
        55
        nosql

[root@gitlinux Project-1]# git reset
[root@gitlinux Project-1]# git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        11
        22
        33
        44
        55
        java
        mysql
        nosql
        oracle
        python

nothing added to commit but untracked files present (use "git add" to track)
[root@gitlinux Project-1]#


--------------------------------------------------------------

uncommit   

Syntax:

git reset --soft HEAD~  <-- this command used for to uncommit latest committed files 


Practical Example:


          [root@gitlinux Project-1]# git show
          commit e6a56ef672a3d6197cc773971fc5399e135bf9ad (HEAD -> main)
          Author: Ravindra <ravindra@gmail.com>
          Date:   Tue Aug 20 18:13:06 2024 +0530

              test commit

          diff --git a/f10 b/f10
          new file mode 100644
          index 0000000..e69de29
          diff --git a/f6 b/f6
          new file mode 100644
          index 0000000..e69de29
          diff --git a/f7 b/f7
          new file mode 100644
          index 0000000..e69de29
          diff --git a/f8 b/f8
          new file mode 100644
          index 0000000..e69de29
          diff --git a/f9 b/f9
          new file mode 100644
          index 0000000..e69de29
          [root@gitlinux Project-1]# git status
          On branch main
          Your branch is ahead of 'origin/main' by 4 commits.
            (use "git push" to publish your local commits)

          Untracked files:
            (use "git add <file>..." to include in what will be committed)
                  11
                  22
                  33
                  44
                  55
                  java
                  mysql
                  nosql
                  oracle
                  python

          nothing added to commit but untracked files present (use "git add" to track)
          [root@gitlinux Project-1]# git reset --soft HEAD~
          [root@gitlinux Project-1]# git status
          On branch main
          Your branch is ahead of 'origin/main' by 3 commits.
            (use "git push" to publish your local commits)

          Changes to be committed:
            (use "git restore --staged <file>..." to unstage)
                  new file:   f10
                  new file:   f6
                  new file:   f7
                  new file:   f8
                  new file:   f9

          Untracked files:
            (use "git add <file>..." to include in what will be committed)
                  11
                  22
                  33
                  44
                  55
                  java
                  mysql
                  nosql
                  oracle
                  python

          [root@gitlinux Project-1]#

-------------------------------------------------------------------------------

for uncommit and unstage at a time  

     Practical Example:

     [root@gitlinux Project-1]# git show
    commit f330cbba8536189177b8f0bf53d894ba2d39c4ed (HEAD -> main)
    Author: Ravindra <ravindra@gmail.com>
    Date:   Tue Aug 20 18:07:23 2024 +0530

        test commit

    diff --git a/f2 b/f2
    new file mode 100644
    index 0000000..e69de29
    diff --git a/f3 b/f3
    new file mode 100644
    index 0000000..e69de29
    diff --git a/f4 b/f4
    new file mode 100644
    index 0000000..e69de29
    [root@gitlinux Project-1]#
    [root@gitlinux Project-1]# git status
    On branch main
    Your branch is ahead of 'origin/main' by 3 commits.
      (use "git push" to publish your local commits)

    Changes to be committed:
      (use "git restore --staged <file>..." to unstage)
            new file:   f10
            new file:   f6
            new file:   f7
            new file:   f8
            new file:   f9

    Untracked files:
      (use "git add <file>..." to include in what will be committed)
            11
            22
            33
            44
            55
            java
            mysql
            nosql
            oracle
            python

    [root@gitlinux Project-1]# git reset @~
    [root@gitlinux Project-1]# git status
    On branch main
    Your branch is ahead of 'origin/main' by 2 commits.
      (use "git push" to publish your local commits)

    Untracked files:
      (use "git add <file>..." to include in what will be committed)
            11
            22
            33
            44
            55
            f10
            f2
            f3
            f4
            f6
            f7
            f8
            f9
            java
            mysql
            nosql
            oracle
            python

    nothing added to commit but untracked files present (use "git add" to track)
    [root@gitlinux Project-1]#


