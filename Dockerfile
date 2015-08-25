FROM frozzare/nginx-php

ADD ./sites-enabled/ /etc/nginx/sites-enabled/
ADD . /app/

RUN rm -r /app/web/app/uploads/
