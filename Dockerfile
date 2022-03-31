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

COPY html ./
