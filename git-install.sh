# 8PM-DevOps-Batch

# hello guys this file will help you to install latest version of git in all redhat family OS'es
yum update -y

hostnamectl set-hostname cicdserver

exec bash

yum install wget vim tar make unzip -y 

yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y

yum install gcc perl-ExtUtils-MakeMaker -y

cd  /opt 

wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.45.2.tar.gz

ll 

tar -xvf git-2.45.2.tar.gz

ll 


#output


		git-2.45.2
  
		git-2.45.2.tar.gz
  
cd git-2.45.2

make prefix=/usr/local/git all 

make prefix=/usr/local/git install 


vim ~/.bashrc

# apply i button  to insert below statement in end of the document 

export PATH=$PATH:/usr/local/git/bin 



#now save and exit by :wq 

#now apply below command to update file 


source ~/.bashrc

git --version 



