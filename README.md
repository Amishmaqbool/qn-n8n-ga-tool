# n8n Workflow Automation Platform

This repository contains the configuration files needed to deploy n8n on Nexlayer.com.

## What is n8n?

n8n is a fair-code licensed workflow automation tool that helps you to automate tasks across different services. It's a visual workflow editor that allows you to connect different apps and services to create automated workflows.

## Features

- Visual workflow editor
- 200+ integrations with popular services
- Webhook support
- REST API
- Custom nodes support
- Workflow templates
- Execution history
- User management

## Deployment on Nexlayer

This setup includes:
- Dockerfile optimized for n8n
- Environment configuration
- Health checks
- Proper user permissions

## Environment Variables

The following environment variables can be configured:

- `N8N_BASIC_AUTH_ACTIVE`: Enable basic authentication (default: true)
- `N8N_BASIC_AUTH_USER`: Username for basic auth (default: admin)
- `N8N_BASIC_AUTH_PASSWORD`: Password for basic auth (default: password)
- `N8N_HOST`: Host for n8n (default: localhost)
- `N8N_PORT`: Port for n8n (default: 5678)
- `N8N_PROTOCOL`: Protocol (http/https)
- `WEBHOOK_URL`: Webhook URL for workflows
- `GENERIC_TIMEZONE`: Timezone for workflows

## Local Development

To run n8n locally:

```bash
docker-compose up -d
```

Access n8n at: http://localhost:5678

## Security Notes

- Change default credentials in production
- Use HTTPS in production
- Configure proper authentication
- Set up proper backup strategies for workflows

## License

n8n is licensed under fair-code. See https://n8n.io/license for details.
