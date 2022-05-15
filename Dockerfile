FROM docker.io/library/nginx:1-alpine
RUN apk --no-cache upgrade

WORKDIR /usr/share/nginx/html
EXPOSE 80
VOLUME /calendars
VOLUME /eventfiles

COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN nginx -t

RUN    ln -s /eventfiles/all.txt \
    && ln -s /eventfiles/all.csv \
    && ln -s /calendars tg

HEALTHCHECK \
	--interval=30s \
	--timeout=5s \
	--retries=2 \
	CMD wget -nv --tries=1 --spider http://127.0.0.1/ || exit 1

COPY html ./
