FROM docker.io/library/nginx:1-alpine
RUN apk --no-cache upgrade

VOLUME /calendars
VOLUME /eventfiles

COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN nginx -t

WORKDIR /usr/share/nginx/html

RUN ln -s /eventfiles/all.txt
RUN ln -s /eventfiles/all.csv
RUN ln -s /calendars tg

COPY assets assets
COPY backgrounds backgrounds
COPY favicon.ico *.html *.css *.js ./
