# n8n Nexlayer Deployment Guide

## Prerequisites

1. **Docker**: Make sure Docker is installed and running
2. **Nexlayer Account**: Visit [app.nexlayer.io](https://app.nexlayer.io) to get your authentication token
3. **Git**: For version control (optional but recommended)

## Quick Start

### 1. Build and Push Docker Image

```bash
# Make the deployment script executable
chmod +x deploy.sh

# Run the deployment script
./deploy.sh
```

### 2. Get Nexlayer Authentication Token

1. Visit [app.nexlayer.io](https://app.nexlayer.io)
2. Generate an authentication Bearer token
3. Copy the token for use with the MCP tools

### 3. Update Configuration

Edit `nexlayer.yaml` and update:
- `name`: Your desired application name
- `WEBHOOK_URL`: Your app's URL (will be `https://your-app-name.nexlayer.app/`)
- `N8N_ENCRYPTION_KEY`: A secure random string

### 4. Deploy to Nexlayer

Once you have your authentication token, you can deploy using the Nexlayer MCP tools.

## Configuration Options

### Environment Variables

Key environment variables you can customize:

- **Authentication**:
  - `N8N_BASIC_AUTH_USER`: Username (default: admin)
  - `N8N_BASIC_AUTH_PASSWORD`: Password (default: password)

- **Security**:
  - `N8N_ENCRYPTION_KEY`: Required for encrypting sensitive data
  - `N8N_USER_MANAGEMENT_DISABLED`: Disable user management

- **Performance**:
  - `N8N_EXECUTIONS_TIMEOUT`: Maximum execution time (default: 3600s)
  - `N8N_LOG_LEVEL`: Logging level (info, debug, warn, error)

### Resource Allocation

In `nexlayer.yaml`, you can adjust:
- `cpu`: CPU allocation (0.5 = 50% of one core)
- `memory`: Memory allocation (512Mi)
- `storage`: Persistent storage (1Gi)

## Security Best Practices

1. **Change Default Credentials**: Update admin username/password
2. **Use Strong Encryption Key**: Generate a secure random string
3. **Enable HTTPS**: Configure SSL in production
4. **Regular Backups**: Backup your workflows and data
5. **Monitor Access**: Review logs regularly

## Troubleshooting

### Common Issues

1. **Health Check Fails**: Check if n8n is starting properly
2. **Port Conflicts**: Ensure port 5678 is available
3. **Memory Issues**: Increase memory allocation if needed
4. **Database Errors**: Check SQLite file permissions

### Logs

View application logs through the Nexlayer dashboard or by checking the container logs.

## Support

- n8n Documentation: https://docs.n8n.io/
- Nexlayer Documentation: https://docs.nexlayer.io/
- Community Support: https://community.n8n.io/
