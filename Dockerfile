FROM prom/blackbox-exporter:latest

# Copy config
COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Use Railway dynamic PORT
ENV PORT=8080
EXPOSE $PORT

# Start Blackbox Exporter correctly
CMD [ "/bin/blackbox_exporter", "--web.listen-address=:$PORT", "--config.file=/etc/blackbox_exporter/config.yml" ]
