FROM docker.io/library/joomla:6.1.2-apache@sha256:95a2414186ed6b08268245767a529632c2d0e7f15f1c6da5b59e3adf7cc1c991
COPY railway-entrypoint.sh /usr/local/bin/joomla-railway-entrypoint
RUN chmod +x /usr/local/bin/joomla-railway-entrypoint
EXPOSE 80
ENTRYPOINT ["/usr/local/bin/joomla-railway-entrypoint"]
CMD ["apache2-foreground"]
