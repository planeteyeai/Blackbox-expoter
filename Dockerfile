# Use official blackbox exporter image
FROM prom/blackbox-exporter:latest

# Copy config
COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Expose the default port (optional)
EXPOSE 8080

# Use shell form so environment variable is substituted
CMD blackbox_exporter --web.listen-address=":$PORT" --config.file=/etc/blackbox_exporter/config.yml
