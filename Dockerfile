# Use official Blackbox Exporter image
FROM prom/blackbox-exporter:latest

# Copy your configuration
COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Railway dynamic PORT
ENV PORT=8080
EXPOSE $PORT

# Start Blackbox Exporter with correct flags
CMD ["--web.listen-address=:${PORT}", "--config.file=/etc/blackbox_exporter/config.yml", "--web.external-url="]
