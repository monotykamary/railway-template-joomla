# Joomla on Railway

Deploy Joomla 6.1.2 with unattended administrator setup, private MariaDB 11.8, and daily-backed-up volumes. The verified deploy button is added after publication.

Sign in at `/administrator/` with `JOOMLA_ADMIN_USERNAME` and generated `JOOMLA_ADMIN_PASSWORD`. Joomla files and MariaDB data are persistent. Use one Joomla replica because uploaded files use one attached volume.

Upstream: https://github.com/joomla/joomla-cms/tree/6.1.2 (GPL-2.0-or-later). Not affiliated with Railway.
