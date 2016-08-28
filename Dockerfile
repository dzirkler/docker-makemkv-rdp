FROM hurricane/dockergui:x11rdp1.3
MAINTAINER Damon Zirkler <damon@zirkler.com>

# User/Group Id gui app will be executed as
ENV USER_ID="1000" GROUP_ID="1000" APP_NAME="MakeMKV" TERM="xterm" WIDTH="1280" HEIGHT="720"

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Install MakeMKV
ADD ./files/ /tmp/
RUN chmod +x /tmp/install/install.sh && sleep 1 && /tmp/install/install.sh && rm -r /tmp/install


VOLUME ["/config"]
EXPOSE 3389 8080
