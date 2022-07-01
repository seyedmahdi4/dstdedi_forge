FROM debian:latest
COPY install.sh /tmp
RUN chmod +x /tmp/install.sh && /tmp/install.sh
COPY ReForged/ /home/dst/.klei/DoNotStarveTogether/ReForged/
RUN chown -R dst:dst /home/dst
COPY script.sh /home/dst/script.sh
RUN chown dst:dst /home/dst/script.sh &&  chmod +x /home/dst/script.sh
#WORKDIR /home/dst/dontstarvetogether_dedicated_server/bin64/
WORKDIR /home/dst/
USER dst:dst
CMD ["./script.sh"]
