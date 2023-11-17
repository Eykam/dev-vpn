From ubuntu:latest
# RUN ufw allow proto tcp from any to any port 443
# RUN ufw allow proto tcp from any to any port 80
# RUN ufw allow proto tcp from any to any port 3479
# RUN ufw allow proto tcp from any to any port 8089
# RUN ufw allow 51821:51830/udp
RUN y | apt update && apt update
COPY ./ ./

CMD ["bash", "entrypoint.sh"]
