FROM node:20-alpine

# Install dependencies
RUN apk add --update --no-cache \
    tzdata \
    su-exec \
    && rm -rf /var/cache/apk/*

# Set timezone
ENV TZ=UTC

# Create n8n user
RUN addgroup -g 1001 n8n && \
    adduser -u 1001 -G n8n -s /bin/sh -D n8n

# Install n8n globally
RUN npm install -g n8n --network-timeout=600000

# Create n8n directories
RUN mkdir -p /home/n8n/.n8n && \
    chown -R n8n:n8n /home/n8n

# Set working directory
WORKDIR /home/n8n

# Switch to n8n user
USER n8n

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:5678/healthz || exit 1

# Start n8n
CMD ["n8n", "start"]
