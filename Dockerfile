FROM prom/blackbox-exporter:latest

# Copy your config
COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Use Railway dynamic PORT
ENV PORT=8080
EXPOSE $PORT

# Start blackbox_exporter using Railway's PORT
CMD [ "--web.listen-address=:$PORT", "--config.file=/etc/blackbox_exporter/config.yml" ]
