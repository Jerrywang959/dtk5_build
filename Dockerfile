From debian:10

#RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list  
    # && sed -i 's/security.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security/g' /etc/apt/sources.list 

RUN apt update && apt install ca-certificates gnupg1 gnupg2 gnupg -y \
    && echo "deb [trusted=yes] https://community-packages.deepin.com/deepin/ apricot main contrib non-free" > /etc/apt/sources.list.d/deepin.list \
    && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 425956BB3E31DF51 \
    && apt update \ 
    && apt install qt5-default libdtkcore-dev libdtkwidget-dev qtwebengine5-dev libnotify-dev -y

