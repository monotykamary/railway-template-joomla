FROM docker.io/library/joomla:6.1.3-apache@sha256:08f19dfa6ef25324a13b50acadc8f42f8738a12f5e98439aade89c88f78bc011
COPY railway-entrypoint.sh /usr/local/bin/joomla-railway-entrypoint
RUN chmod +x /usr/local/bin/joomla-railway-entrypoint
EXPOSE 80
ENTRYPOINT ["/usr/local/bin/joomla-railway-entrypoint"]
CMD ["apache2-foreground"]
