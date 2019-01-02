#FROM hurricane/dockergui:x11rdp1.3
FROM jlesage/baseimage-gui:ubuntu-18.04-v3.5.1

# User/Group Id gui app will be executed as
ENV USER_ID="1000" GROUP_ID="1000" APP_NAME="MakeMKV" TERM="xterm" WIDTH="1280" HEIGHT="720"

# Use baseimage-docker's init system
#CMD ["/sbin/my_init"]

# Install MakeMKV
ADD ./files/ /tmp/
RUN chmod +x /tmp/install/install.sh && sleep 1 && /tmp/install/install.sh && rm -r /tmp/install
ENV APP_NAME="MakeMKV"

VOLUME ["/config"]
EXPOSE 5800 5900 
