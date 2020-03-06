FROM alpine:latest


ADD https://github.com/ginuerzh/gost/releases/download/v2.11.0/gost-linux-armv8-2.11.0.gz /tmp/
 
RUN \
cd /tmp \
&& gzip -d gost-linux-armv8-2.11.0.gz \
&& mv gost-linux-armv8-2.11.0/gost /bin/ \
&& rm -rf gost-linux-armv8-2.11.0*

VOLUME /etc/gost

CMD ["/bin/gost", "-C", "/etc/gost/gost.json"]
