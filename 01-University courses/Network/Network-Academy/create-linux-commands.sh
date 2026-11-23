
#!/usr/bin/env bash
set -euo pipefail

ROOT="01-Networking/12-Linux Networking Commands"

DIRS=(
"01-Network Information"
"02-IP Configuration"
"03-Connectivity Testing"
"04-DNS Commands"
"05-Sockets and Ports"
"06-Packet Analysis"
"07-Firewall Commands"
"08-Network Management"
"09-Virtual Networking"
"10-Docker and LXC"
"11-VPN and Proxy"
"12-Network Troubleshooting"
"13-Cheat Sheets"
)

FILES=(
"00-index.md"

"01-Network Information/00-index.md"
"01-Network Information/01-ip-addr.md"
"01-Network Information/02-ip-link.md"
"01-Network Information/03-ip-route.md"
"01-Network Information/04-ip-neigh.md"
"01-Network Information/05-hostname.md"
"01-Network Information/06-uname.md"
"01-Network Information/07-ethtool.md"

"02-IP Configuration/00-index.md"
"02-IP Configuration/01-ip-address.md"
"02-IP Configuration/02-ip-route.md"
"02-IP Configuration/03-ip-rule.md"
"02-IP Configuration/04-ip-tunnel.md"
"02-IP Configuration/05-nmcli.md"
"02-IP Configuration/06-nmtui.md"
"02-IP Configuration/07-networkctl.md"

"03-Connectivity Testing/00-index.md"
"03-Connectivity Testing/01-ping.md"
"03-Connectivity Testing/02-traceroute.md"
"03-Connectivity Testing/03-tracepath.md"
"03-Connectivity Testing/04-mtr.md"
"03-Connectivity Testing/05-nc.md"
"03-Connectivity Testing/06-curl.md"

"04-DNS Commands/00-index.md"
"04-DNS Commands/01-dig.md"
"04-DNS Commands/02-nslookup.md"
"04-DNS Commands/03-host.md"
"04-DNS Commands/04-resolvectl.md"
"04-DNS Commands/05-getent.md"

"05-Sockets and Ports/00-index.md"
"05-Sockets and Ports/01-ss.md"
"05-Sockets and Ports/02-netstat.md"
"05-Sockets and Ports/03-lsof.md"
"05-Sockets and Ports/04-fuser.md"

"06-Packet Analysis/00-index.md"
"06-Packet Analysis/01-tcpdump.md"
"06-Packet Analysis/02-tshark.md"
"06-Packet Analysis/03-wireshark.md"

"07-Firewall Commands/00-index.md"
"07-Firewall Commands/01-nft.md"
"07-Firewall Commands/02-iptables.md"
"07-Firewall Commands/03-ip6tables.md"
"07-Firewall Commands/04-ufw.md"

"08-Network Management/00-index.md"
"08-Network Management/01-systemctl-network.md"
"08-Network Management/02-journalctl-network.md"
"08-Network Management/03-resolvconf.md"
"08-Network Management/04-network-manager.md"

"09-Virtual Networking/00-index.md"
"09-Virtual Networking/01-ip-netns.md"
"09-Virtual Networking/02-bridge.md"
"09-Virtual Networking/03-veth.md"
"09-Virtual Networking/04-tun-tap.md"
"09-Virtual Networking/05-brctl.md"
"09-Virtual Networking/06-vlan.md"

"10-Docker and LXC/00-index.md"
"10-Docker and LXC/01-docker-network.md"
"10-Docker and LXC/02-docker-inspect.md"
"10-Docker and LXC/03-docker-port.md"
"10-Docker and LXC/04-lxc-info.md"
"10-Docker and LXC/05-lxc-network.md"

"11-VPN and Proxy/00-index.md"
"11-VPN and Proxy/01-wg.md"
"11-VPN and Proxy/02-tailscale.md"
"11-VPN and Proxy/03-openvpn.md"
"11-VPN and Proxy/04-sing-box.md"

"12-Network Troubleshooting/00-index.md"
"12-Network Troubleshooting/01-No-Internet.md"
"12-Network Troubleshooting/02-DNS-Diagnostics.md"
"12-Network Troubleshooting/03-Routing-Diagnostics.md"
"12-Network Troubleshooting/04-Port-Diagnostics.md"
"12-Network Troubleshooting/05-Interface-Diagnostics.md"

"13-Cheat Sheets/00-index.md"
"13-Cheat Sheets/01-ip-Commands.md"
"13-Cheat Sheets/02-DNS-Commands.md"
"13-Cheat Sheets/03-Network-Diagnostics.md"
"13-Cheat Sheets/04-Common-Ports.md"
)

echo "Creating directories..."

for dir in "${DIRS[@]}"; do
    mkdir -p "$ROOT/$dir"
done

echo "Creating Markdown files..."

for file in "${FILES[@]}"; do
    mkdir -p "$ROOT/$(dirname "$file")"
    touch "$ROOT/$file"
done

echo "Creating main index..."

if [[ ! -s "$ROOT/00-index.md" ]]; then
cat > "$ROOT/00-index.md" <<'EOF'
# Linux Networking Commands

مرجع دستورات شبکه در لینوکس

## Categories

- [[01-Network Information/00-index]]
- [[02-IP Configuration/00-index]]
- [[03-Connectivity Testing/00-index]]
- [[04-DNS Commands/00-index]]
- [[05-Sockets and Ports/00-index]]
- [[06-Packet Analysis/00-index]]
- [[07-Firewall Commands/00-index]]
- [[08-Network Management/00-index]]
- [[09-Virtual Networking/00-index]]
- [[10-Docker and LXC/00-index]]
- [[11-VPN and Proxy/00-index]]
- [[12-Network Troubleshooting/00-index]]
- [[13-Cheat Sheets/00-index]]
EOF
fi

echo "Done!"
echo "Location: $ROOT"
echo "Markdown files: $(find "$ROOT" -type f -name '*.md' | wc -l)"
echo
tree -L 3 "$ROOT" 2>/dev/null || find "$ROOT" -maxdepth 3 -type f | sort
