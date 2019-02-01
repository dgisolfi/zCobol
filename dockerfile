FROM ubuntu:18.04
MAINTAINER Daniel Nicolas Gisolfi
RUN apt-get update \
        && apt-get install -y \
            software-properties-common \
                wget \
                zip \
                && apt-get update \
                && apt-get install -y \
                    git \
                    vim \
                    perl \
                    default-jre

WORKDIR /usr/local/lib/
# Get and "install" the zcobol compiler
RUN wget http://www.sourceforge.net/projects/z390/files/z390_v1506/z390_v1506_files.zip
RUN unzip z390_v1506_files.zip

# Create a Sym Link to the perl script 
# and give it executable mode
WORKDIR /
RUN ln -s /usr/local/lib/z390/dos.pl /usr/local/bin/dos \
    && chmod +x /usr/local/bin/dos

RUN ln -s /usr/local/lib/z390/z390.pl /usr/local/bin/zcobol \
    && chmod +x /usr/local/bin/zcobol


