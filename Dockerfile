From ubuntu:latest

RUN ufw allow proto tcp from any to any port 443
RUN ufw allow proto tcp from any to any port 80
RUN ufw allow proto tcp from any to any port 3479
RUN ufw allow proto tcp from any to any port 8089
RUN ufw allow 51821:51830/udp

CMD ["‍wget", "-qO", "https://gist.githubusercontent.com/afeiszli/381cb6bbeb69f7e1aa6966d2ccecd2a0/raw/b359112e5021c7f47cae7f2acaf0097e14571851/netmaker-vpn.sh", "|", "sudo", "bash", "-s" ,"--", "-v" ,"true", "-m" ,"false", "-c", "3"]
