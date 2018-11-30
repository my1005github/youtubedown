FROM centos
RUN yum -y install epel-release \
&& yum localinstall -y --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm \
&& rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro \
&& rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm \
&& yum -y install ffmpeg ffmpeg-devel \
&& yum -y install wget \
&& wget http://youtube-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl \
&& chmod a+x /usr/local/bin/youtube-dl
WORKDIR /data
VOLUME /data
