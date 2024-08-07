ip=$(curl -s https://2ip.ru)
sed -ie "s|https://rpc-testnet.0g.ai|http://$ip:8545|" /etc/systemd/system/daclient.service
systemctl daemon-reload
systemctl restart daclient && journalctl -fu daclient
