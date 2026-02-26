FROM prom/blackbox-exporter:latest

# Copy your config
COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Use the Railway dynamic port
ENV PORT 8080
EXPOSE $PORT

# Start Blackbox Exporter on the port Railway expects
CMD ["--config.file=/etc/blackbox_exporter/config.yml", "--web.listen-address=:$PORT"]
