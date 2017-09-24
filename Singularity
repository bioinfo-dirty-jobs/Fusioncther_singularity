Bootstrap: docker
From: ubuntu:latest 

%environment
export PATH="/opt/anaconda2/bin:$PATH"

%labels
AUTHOR Maurizio Polano

%post
	apt-get update

	apt-get install -y wget bzip2 perl gawk

	wget https://repo.continuum.io/archive/Anaconda2-4.4.0-Linux-x86_64.sh

	bash Anaconda2-4.4.0-Linux-x86_64.sh -b -p /opt/anaconda2

        /opt/anaconda2/bin/conda config --add channels bioconda
        /opt/anaconda2/bin/conda config --add channels conda-forge

	/opt/anaconda2/bin/conda install -c r r-base=3.3.2 r-essentials=1.5.2 r-devtools=1.12.0

	/opt/anaconda2/bin/conda install -c bioconda --yes  samtools  sambamba deeptools preseq

