FROM docker.io/library/joomla:6.1.4-apache@sha256:28e687c20121930b1fa16a31e39b31956f4227006a8608534b3228d24f4759c2
COPY railway-entrypoint.sh /usr/local/bin/joomla-railway-entrypoint
RUN chmod +x /usr/local/bin/joomla-railway-entrypoint
EXPOSE 80
ENTRYPOINT ["/usr/local/bin/joomla-railway-entrypoint"]
CMD ["apache2-foreground"]
