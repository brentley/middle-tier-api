FROM nginx:alpine

RUN apk add -U bash && \
	rm -rvf /var/cache/apk/ /var/lib/apk/ /etc/apk/cache/

COPY startup.sh /usr/local/bin/

CMD ["/usr/local/bin/startup.sh"]


