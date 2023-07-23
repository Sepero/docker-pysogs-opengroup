FROM ubuntu:22.04

ENV TZ=Asia/Dubai
ENV SOGS_CONFIG=/sogs/sogs.ini
ENV DEBIAN_FRONTEND=noninteractive

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir /sogs
COPY sogs.ini /sogs/sogs.ini
COPY run.sh /sogs/run.sh
RUN chmod +x /sogs/run.sh

RUN apt-get -y update
#RUN apt-get -y upgrade # Temporarily remove while testing
RUN apt-get -y install curl lsb-release systemctl apt-utils nano tzdata dialog sqlite3 ucf libterm-readline-gnu-perl bash-completion less

RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
# Add the Oxen apt repository to your package configuration:
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list
# Update package lists:

RUN apt-get -y update

RUN apt-get -y install sogs-standalone

ENTRYPOINT bash
