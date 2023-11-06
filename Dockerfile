FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl &&\
    curl -L https://rig.r-pkg.org/deb/rig.gpg -o /etc/apt/trusted.gpg.d/rig.gpg &&\
    sh -c 'echo "deb http://rig.r-pkg.org/deb rig main" > /etc/apt/sources.list.d/rig.list' &&\
    apt update && apt install r-rig

RUN rig add 4.3.0

RUN R -e "install.packages('jsonlite')"
