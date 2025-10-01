# Infra
This is infrastructure configuration for my NAS on debian 13.

Decisions:
- mergerfs for fuse filesystem, allows to easily expand and combo with SnapRAID in future
- I use docker for all my self hosted apps which makes it easy to backup
- I don't docker wireguard or DNS because It can mess routing (and is simpler)
- I use iptables to manage my firewall, solutions like firewalld or ufw don't work with docker and writing rules myself makes them easy to manage.
  Here is my blog post explaining it: https://yaneko.net/posts/iptables101.html
