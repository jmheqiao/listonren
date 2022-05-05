FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244

# ENTRYPOINT [ "./alist", "-docker" ]

RUN chmod +x /opt/alist
RUN /opt/alist

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
