
#!/usr/bin/env bash

set -euo pipefail

BASE_DIR="04-Wireshark"

# Create a directory and its Markdown files
create_section() {
    local dir="$1"
    shift

    mkdir -p "$BASE_DIR/$dir"

    for file in "$@"; do
        touch "$BASE_DIR/$dir/$file.md"
    done
}

# Root index
mkdir -p "$BASE_DIR"
touch "$BASE_DIR/00-index.md"
touch "$BASE_DIR/roadmap.md"

# 01 - Introduction and Installation
create_section "01-Introduction and Installation" \
    "01-Wireshark Overview" \
    "02-Wireshark Architecture" \
    "03-Installation" \
    "04-First Capture" \
    "05-Wireshark Interface"

# 02 - Packet Capture
create_section "02-Packet Capture" \
    "01-Capture Interfaces" \
    "02-Capture Options" \
    "03-Capture Filters" \
    "04-Capture Files" \
    "05-Live Capture" \
    "06-Capture Troubleshooting"

# 03 - Display Filters
create_section "03-Display Filters" \
    "01-Display Filter Fundamentals" \
    "02-Comparison Operators" \
    "03-Logical Operators" \
    "04-IP Filters" \
    "05-TCP and UDP Filters" \
    "06-DNS Filters" \
    "07-HTTP and HTTPS Filters" \
    "08-ARP and ICMP Filters" \
    "09-Advanced Filters" \
    "10-Filter Expressions"

# 04 - Protocol Analysis
create_section "04-Protocol Analysis" \
    "01-Ethernet Analysis" \
    "02-ARP Analysis" \
    "03-IP Analysis" \
    "04-TCP Analysis" \
    "05-UDP Analysis" \
    "06-DNS Analysis" \
    "07-DHCP Analysis" \
    "08-ICMP Analysis" \
    "09-HTTP Analysis" \
    "10-TLS Analysis" \
    "11-SSH Analysis" \
    "12-VLAN Analysis" \
    "13-Routing Protocol Analysis"

# 05 - TCP Analysis
create_section "05-TCP Analysis" \
    "01-TCP Three-Way Handshake" \
    "02-TCP Connection Termination" \
    "03-TCP Retransmissions" \
    "04-TCP Duplicate ACK" \
    "05-TCP Zero Window" \
    "06-TCP Reset" \
    "07-TCP Performance Analysis"

# 06 - Statistics and Analysis Tools
create_section "06-Statistics and Analysis Tools" \
    "01-Protocol Hierarchy" \
    "02-Conversations" \
    "03-End Points" \
    "04-IO Graphs" \
    "05-Flow Graph" \
    "06-Expert Information" \
    "07-Statistics Menu"

# 07 - Advanced Features
create_section "07-Advanced Features" \
    "01-Follow TCP Stream" \
    "02-Follow UDP Stream" \
    "03-Decode As" \
    "04-Name Resolution" \
    "05-Coloring Rules" \
    "06-Protocol Preferences" \
    "07-Decryption Basics" \
    "08-Export Objects"

# 08 - Command Line Tools
create_section "08-Command Line Tools" \
    "01-TShark Fundamentals" \
    "02-Capture with TShark" \
    "03-Display Filters with TShark" \
    "04-Read PCAP Files" \
    "05-Extract Packet Fields" \
    "06-Dumpcap" \
    "07-Mergecap and Editcap"

# 09 - Network Troubleshooting
create_section "09-Network Troubleshooting" \
    "01-DNS Troubleshooting" \
    "02-DHCP Troubleshooting" \
    "03-TCP Troubleshooting" \
    "04-Connectivity Troubleshooting" \
    "05-Latency Analysis" \
    "06-Packet Loss Analysis" \
    "07-Performance Troubleshooting"

# 10 - Security Analysis
create_section "10-Security Analysis" \
    "01-Suspicious Traffic Analysis" \
    "02-Port Scanning Detection" \
    "03-DNS Anomaly Detection" \
    "04-ARP Spoofing Detection" \
    "05-TLS Inspection" \
    "06-Malware Traffic Analysis" \
    "07-Network Forensics"

# 11 - Practical Projects
create_section "11-Practical Projects" \
    "01-Basic Packet Capture" \
    "02-TCP Handshake Analysis" \
    "03-DNS Query Analysis" \
    "04-DHCP Process Analysis" \
    "05-HTTP Traffic Analysis" \
    "06-TCP Retransmission Investigation" \
    "07-Network Slowdown Investigation" \
    "08-Port Scan Detection" \
    "09-ARP Spoofing Investigation" \
    "10-GNS3 Packet Analysis" \
    "11-Enterprise Network Analysis"

# 12 - Cheat Sheets
create_section "12-Cheat Sheets" \
    "01-Common Display Filters" \
    "02-Capture Filters" \
    "03-TCP Analysis Filters" \
    "04-DNS and DHCP Filters" \
    "05-TShark Commands"

# Create section index files
find "$BASE_DIR" -mindepth 2 -type d -print0 |
while IFS= read -r -d '' dir; do
    touch "$dir/00-index.md"
done

echo "Wireshark knowledge base created successfully!"
echo "Location: $BASE_DIR"
