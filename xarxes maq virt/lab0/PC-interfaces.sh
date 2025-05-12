# PC1
sudo docker exec clab-topo1-PC1 ip link set eth1 up
sudo docker exec clab-topo1-PC1 ip addr add 192.168.12.2/24 dev eth1
sudo docker exec clab-topo1-PC1 ip route add default via 192.168.12.1 dev eth1

# PC2
sudo docker exec clab-topo1-PC2 ip link set eth1 up
sudo docker exec clab-topo1-PC2 ip addr add 192.168.23.2/24 dev eth1
sudo docker exec clab-topo1-PC2 ip route add default via 192.168.23.1 dev eth1

# PC3
sudo docker exec clab-topo1-PC3 ip link set eth1 up
sudo docker exec clab-topo1-PC3 ip addr add 192.168.34.2/24 dev eth1
sudo docker exec clab-topo1-PC3 ip route add default via 192.168.34.1 dev eth1