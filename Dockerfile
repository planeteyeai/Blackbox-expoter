FROM prom/blackbox-exporter:latest

# Copy your config
COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Railway dynamic PORT
ENV PORT=8080
EXPOSE $PORT

# Start blackbox_exporter using flags only
CMD [ "--web.listen-address=:$PORT", "--config.file=/etc/blackbox_exporter/config.yml" ]
