Bootstrap: docker
From: ubuntu:latest 

%environment
export PATH=$PATH:/usr/games/


%labels
AUTHOR Maurizio Polano

%post

apt-get update && apt-get install -y locales-all curl wget gawk gcc g++ make cmake automake curl unzip zip bzip2 tar gzip pigz parallel build-essential libncurses5-dev libc6-dev zlib1g zlib1g-dev libtbb-dev libtbb2 python python-dev python-numpy python-biopython python-xlrd python-openpyxl default-jdk
wget http://sf.net/projects/fusioncatcher/files/bootstrap.py -O bootstrap.py && python bootstrap.py -t --download -y
 

