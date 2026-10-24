FROM docker.io/library/joomla:6.2.0-apache@sha256:fd500c9888df7b59aa0e8265146f4c37ca41a492f103d81f0aaf3d58d119187c
COPY railway-entrypoint.sh /usr/local/bin/joomla-railway-entrypoint
RUN chmod +x /usr/local/bin/joomla-railway-entrypoint
EXPOSE 80
ENTRYPOINT ["/usr/local/bin/joomla-railway-entrypoint"]
CMD ["apache2-foreground"]
