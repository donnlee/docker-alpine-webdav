FROM alpine:3.4
MAINTAINER docker@pluza.com

# When running this container, map host's content subdir to /var/webdav
# Eg.: docker run <...> -v /path/to/content:/var/webdav

# -v : Verbose
# apache2-utils: Needed for htpasswd program.
RUN apk -v --no-cache add \
  bash apache2 apache2-webdav apache2-utils

# Create a subdir for webdav lockdb file.
RUN mkdir -p /var/lib/dav \
  && chown apache:apache /var/lib/dav \
  && chmod 755 /var/lib/dav

# Create a subdir to hold the daemon's pid:
RUN mkdir -p /run/apache2

ADD dav.conf /etc/apache2/conf.d/
ADD run.sh /
RUN chmod 750 /run.sh

EXPOSE 80 443

CMD ["/run.sh"]

