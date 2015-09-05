FROM alpine:latest
MAINTAINER Brendan Dahl <dahl.brendan@gmail.com>

RUN apk update && apk add \
	transmission-daemon \
	&& rm -rf /var/cache/apk/* \
	&& mkdir -p /transmission/ \
	&& chmod 1777 /transmission

EXPOSE 9091

ENTRYPOINT ["/usr/bin/transmission-daemon"]
CMD [ "--foreground" ]
