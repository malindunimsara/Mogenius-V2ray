FROM teddysun/xray
LABEL maintainer="https://github.com/malindunimsara"

COPY config.json /etc/xray/config.json
COPY dark-v2ray.sh /dark-v2ray.sh
RUN chmod +x /dark-v2ray.sh
ENV PATH /usr/bin/xray:$PATH
ENV PORT 8888
ENV TZ=Asia/Colombo

WORKDIR /etc/xray
ENTRYPOINT ["/dark-v2ray.sh"]
CMD ["xray", "-config=/etc/xray/config.json"]
