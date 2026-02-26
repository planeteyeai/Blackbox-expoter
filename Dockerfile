FROM prom/blackbox-exporter:latest

COPY blackbox.yml /etc/blackbox_exporter/config.yml

EXPOSE 9115

# Use sh to properly expand PORT variable
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["blackbox_exporter --config.file=/etc/blackbox_exporter/config.yml --web.listen-address=:${PORT:-9115}"]
