FROM prom/blackbox-exporter:latest

COPY blackbox.yml /etc/blackbox_exporter/config.yml

# Use shell form to allow PORT variable expansion
CMD /bin/blackbox_exporter --config.file=/etc/blackbox_exporter/config.yml --web.listen-address=:${PORT:-9115}
