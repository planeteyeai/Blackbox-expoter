FROM prom/blackbox-exporter:latest
COPY blackbox.yml /etc/blackbox_exporter/config.yml
EXPOSE 9115
CMD [ "--config.file=/etc/blackbox_exporter/config.yml" ]
