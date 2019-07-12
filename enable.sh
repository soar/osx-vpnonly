#!/bin/sh -e

function print_table() {
	pfctl -a vpnonly -t ${1} -T show 2>/dev/null
}

pfctl -E -f /etc/pf.conf

echo "\nAlways allowed hosts:"
for t in ipv4-hosts-allowed ipv6-hosts-allowed ; do
	print_table ${t}
done

echo "\nAllowed subnets:"
for t in ipv4-subnets-allowed ipv6-subnets-allowed ; do
	print_table ${t}
done

echo "\nHosts you can ping even if VPN is down:"
for t in ipv4-hosts-pingonly ipv6-hosts-pingonly ; do
	print_table ${t}
done
