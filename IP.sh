ip=$(curl -s https://2ip.ru)
sed -ie "s|https://rpc-testnet.0g.ai|http://$ip:8545|" /etc/systemd/system/daclient.service
sed -ie "s|https://rpc-testnet.0g.ai|http://$ip:8545|" /root/0g-da-node/config.toml

systemctl daemon-reload
systemctl restart da daclient
