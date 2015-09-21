#FROM alpine:3.2
FROM debian:jessie

ENV CONSUL_VERSION 0.5.2 
ENV UI_VERSION 0.5.2

# This is ugly. This guy didn't work - `mkdir -p /consul/{data,ui}`
# I'm bad at alpine.
RUN mkdir /consul && \
    mkdir /consul/data && \
    mkdir /consul/ui
 
RUN curl -Lo /consul/${CONSUL_VERSION}_linux_amd64.zip https://dl.bintray.com/mitchellh/consul/${CONSUL_VERSION}_linux_amd64.zip && \
    unzip /consul/${CONSUL_VERSION}_linux_amd64.zip -d /consul  && \
    rm -rf /consul/${CONSUL_VERSION}_linux_amd64.zip && \
    chmod +x /consul/consul && \
    curl -Lo /consul/ui/${UI_VERSION}_web_ui.zip https://dl.bintray.com/mitchellh/consul/${UI_VERSION}_web_ui.zip && \
    unzip /consul/ui/${UI_VERSION}_web_ui.zip -d /consul/ui && \
    rm -rf /consul/ui/${UI_VERSION}_web_ui.zip 

EXPOSE 8300
EXPOSE 8400
EXPOSE 8500
EXPOSE 8600

ENTRYPOINT ["/consul/consul"]

CMD []
