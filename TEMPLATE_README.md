# Deploy and Host Joomla on Railway

## About Hosting Joomla

Joomla is an open-source content management system for websites, portals, and applications. This template deploys stable 6.1.3 with unattended setup, generated credentials, and MariaDB.

Sign in at `/administrator/` using `JOOMLA_ADMIN_USERNAME` and `JOOMLA_ADMIN_PASSWORD`.

## Common Use Cases

- Content-rich websites and portals
- Multilingual publishing
- Extensible community and business sites

## Dependencies for Joomla Hosting

### Deployment Dependencies

A Joomla service and private MariaDB service each use a daily-backed-up volume. Railway provides HTTPS for Joomla.

### Implementation Details

The official image performs first-run installation only after database readiness. Database and administrator passwords are generated independently. This is a one-replica filesystem topology.

## Why Deploy Joomla on Railway?

Railway provides generated credentials, private networking, HTTPS, persistent storage, backups, health checks, and Git-driven updates.
