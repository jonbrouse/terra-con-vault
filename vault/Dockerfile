FROM debian:jessie

RUN apt-get update && \
    apt-get install ca-certificates curl unzip -y && \
    apt-get autoclean && \
    apt-get --purge -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV VAULT_VERSION 0.2.0

RUN bash -c 'mkdir -p /vault/conf.d'

RUN curl -Lo /vault/vault_${VAULT_VERSION}_linux_amd64.zip https://dl.bintray.com/mitchellh/vault/vault_${VAULT_VERSION}_linux_amd64.zip && \
    unzip /vault/vault_${VAULT_VERSION}_linux_amd64.zip -d /vault && \
    rm -rf /vault/vault_${VAULT_VERSION}_linux_amd64.zip && \
    chmod +x /vault/vault

EXPOSE 8200 

ENTRYPOINT ["/vault/vault"]

CMD []
