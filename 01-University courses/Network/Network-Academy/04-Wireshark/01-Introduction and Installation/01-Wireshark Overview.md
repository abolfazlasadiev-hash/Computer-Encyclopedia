# Wireshark Overview

## 1. What is Wireshark?

**Wireshark** is a free and open-source network protocol analyzer that allows network administrators, security professionals, and network engineers to capture, inspect, and analyze network traffic.

In simple terms, Wireshark allows us to see what happens when two or more devices communicate over a network.

For example, when a user visits a website, Wireshark can capture and analyze:

- DNS queries used to resolve domain names into IP addresses.
    
- TCP connections established between devices.
    
- TLS handshakes used to establish secure connections.
    
- Packets transmitted and received between hosts.
    
- Network errors and communication problems.
    

Wireshark supports hundreds of network protocols and provides detailed information about packets at different layers of the network stack.

---

## 2. Why Do We Use Wireshark?

One of the most important responsibilities of network engineers is identifying and troubleshooting network problems.

Tools such as Ping and Traceroute provide useful information, but they cannot always identify the exact cause of a network issue.

Wireshark allows us to inspect actual network packets and understand what is happening during communication.

The main use cases of Wireshark include:

### 2.1 Network Troubleshooting

Wireshark helps identify and troubleshoot network problems, such as:

- Connectivity issues between devices.
    
- High network latency.
    
- Packet loss.
    
- DNS resolution failures.
    
- DHCP configuration problems.
    
- TCP retransmissions.
    
- Unexpected connection resets.
    

### 2.2 Protocol Analysis

Wireshark allows us to inspect and analyze different network protocols, including:

- Ethernet
    
- ARP
    
- IPv4 / IPv6
    
- TCP / UDP
    
- DNS
    
- DHCP
    
- HTTP / HTTPS
    
- ICMP
    
- VLAN
    
- OSPF
    
- BGP
    

### 2.3 Network Security Analysis

Wireshark can help security professionals identify suspicious network activities, such as:

- Port scanning.
    
- ARP spoofing.
    
- Unusual DNS queries.
    
- Suspicious network connections.
    
- Unexpected communication patterns.
    
- Potential malware-related traffic.
    

**Note:** Wireshark is not an IDS or IPS by itself. It is a packet analysis tool that helps security professionals investigate network traffic.

### 2.4 Performance Analysis

Wireshark provides information that helps identify network performance problems, including:

- High latency.
    
- TCP retransmissions.
    
- Duplicate ACKs.
    
- TCP Zero Window.
    
- Packet loss.
    
- Throughput problems.
    

---

## 3. How Wireshark Works

Wireshark works by capturing network packets and decoding their contents into a human-readable format.

The general process consists of the following steps:

1. Select a network interface.
    
2. Capture packets passing through the selected interface.
    
3. Store captured packets in memory or a capture file.
    
4. Decode packets and identify their protocols.
    
5. Display packet information in a structured format.
    
6. Analyze traffic using filters and analysis tools.
    

### Packet Capture Process

```
Network Traffic
       |
       v
Network Interface
       |
       v
Packet Capture
       |
       v
Packet Processing
       |
       v
Protocol Dissection
       |
       v
Packet Analysis
       |
       v
Display Filters
```

### Important Components

**Packet Capture:** The process of collecting network packets from a network interface.

**Packet Dissection:** The process of identifying network protocols and decoding packet contents.

**Display Filter:** A filter used to control which captured packets are displayed.

**Capture Filter:** A filter used to determine which packets are captured in the first place.

---

## 4. Wireshark and the OSI Model

One of the most important capabilities of Wireshark is its ability to display packet information from different layers of the OSI model.

|OSI Layer|Wireshark Analysis|
|---|---|
|Layer 7 - Application|HTTP, DNS, DHCP|
|Layer 6 - Presentation|TLS, Data Encoding|
|Layer 5 - Session|Session-related Protocols|
|Layer 4 - Transport|TCP, UDP|
|Layer 3 - Network|IPv4, IPv6, ICMP|
|Layer 2 - Data Link|Ethernet, ARP, VLAN|
|Layer 1 - Physical|Limited interface and capture metadata|

Wireshark primarily analyzes protocol information from captured packets.

It does not directly analyze electrical signals, optical signals, or radio-frequency signals at the physical layer.

---

## 5. Wireshark Interface Overview

The Wireshark graphical interface consists of several important sections.

### 5.1 Packet List Pane

The Packet List Pane displays all captured packets.

Important columns include:

|Column|Description|
|---|---|
|No.|Packet number|
|Time|Packet capture timestamp|
|Source|Source address|
|Destination|Destination address|
|Protocol|Protocol identified in the packet|
|Length|Packet length|
|Info|Additional packet information|

### 5.2 Packet Details Pane

The Packet Details Pane displays the protocol information of the selected packet.

For example, when selecting a TCP packet, we can inspect:

- Ethernet Header.
    
- IP Header.
    
- TCP Header.
    
- TCP Flags.
    
- Source Port.
    
- Destination Port.
    
- Sequence Number.
    
- Acknowledgment Number.
    

This section is especially useful when analyzing protocol behavior.

### 5.3 Packet Bytes Pane

The Packet Bytes Pane displays the raw contents of the selected packet.

Packet data is displayed in two formats:

- Hexadecimal.
    
- ASCII.
    

This feature is useful for detailed packet inspection and low-level protocol analysis.

### 5.4 Display Filter Bar

The Display Filter Bar allows us to filter captured packets and display only the traffic we are interested in.

Examples:

**Filter packets containing a specific IP address:**

```
ip.addr == 192.168.1.10
```

**Display TCP packets:**

```
tcp
```

**Display DNS packets:**

```
dns
```

**Display ICMP packets:**

```
icmp
```

---

## 6. Wireshark vs Other Network Tools

Wireshark is one of several tools used for network monitoring and troubleshooting.

|Tool|Main Purpose|
|---|---|
|Ping|Test network reachability|
|Traceroute|Identify the path packets take|
|Tcpdump|Capture and analyze network traffic through CLI|
|TShark|Command-line packet analyzer|
|Nmap|Network discovery and service scanning|
|Wireshark|Detailed packet inspection and protocol analysis|

The main difference between Wireshark and tools such as Ping is that Wireshark allows us to inspect the actual contents and protocol details of captured packets.

---

## 7. Capture Types

Wireshark supports different methods of packet analysis.

### 7.1 Live Capture

Live Capture allows Wireshark to capture packets directly from an active network interface.

For example, we can capture traffic from:

- Ethernet interfaces.
    
- Wi-Fi interfaces.
    
- Virtual network interfaces.
    
- VPN interfaces.
    

Packets are displayed in real time as they are captured.

### 7.2 Offline Analysis

Offline Analysis allows us to open and analyze previously captured packet files.

Common capture file formats include:

- PCAP
    
- PCAPNG
    

This feature is particularly useful when analyzing network traffic captured in the past or shared by another network engineer.

---

## 8. Important Wireshark Features

Wireshark provides several useful tools for packet analysis.

|Feature|Description|
|---|---|
|Live Capture|Capture network traffic in real time|
|Display Filters|Filter captured packets|
|Capture Filters|Control which packets are captured|
|Follow TCP Stream|Reconstruct TCP communication streams|
|Protocol Hierarchy|Display protocol distribution|
|Conversations|Analyze communication between endpoints|
|I/O Graphs|Visualize network traffic over time|
|Flow Graph|Visualize communication flows|
|Expert Information|Identify noteworthy network events and conditions|
|Export Objects|Extract supported objects from captured traffic|
|TShark|Analyze packets through the command line|

---

## 9. Advantages and Limitations

### 9.1 Advantages

- Free and open-source.
    
- Supports hundreds of network protocols.
    
- Provides a powerful graphical interface.
    
- Allows detailed packet inspection.
    
- Supports PCAP and PCAPNG files.
    
- Useful for network troubleshooting.
    
- Supports security and forensic investigations.
    
- Provides command-line analysis through TShark.
    
- Integrates with network simulation environments such as GNS3.
    

### 9.2 Limitations

- Encrypted traffic cannot generally be fully inspected without the necessary decryption secrets or keys.
    
- Wireshark cannot automatically capture all traffic on a switched network.
    
- Capturing large amounts of traffic can consume significant system resources.
    
- Effective packet analysis requires knowledge of networking protocols.
    
- Wireshark does not automatically prevent network attacks.
    
- Capture permissions and network interface capabilities can limit visibility.
    

---

## 10. Practical Example

Suppose a computer has the following network configuration:

```
IP Address:  192.168.1.10
Subnet Mask: 255.255.255.0
Gateway:     192.168.1.1
DNS Server:  8.8.8.8
```

We want to investigate what happens when we execute the following command:

```
ping google.com
```

Using Wireshark, we can observe the following communication process:

### Step 1: DNS Query

The computer sends a DNS query to resolve `google.com` into an IP address.

### Step 2: DNS Response

The DNS server responds with the resolved IP address.

### Step 3: ICMP Echo Request

The computer sends an ICMP Echo Request to the destination IP address.

### Step 4: ICMP Echo Reply

The destination responds with an ICMP Echo Reply.

### Step 5: Packet Analysis

We can inspect packet details, timestamps, source and destination addresses, and response behavior.

### Useful Display Filters

Display DNS traffic:

```
dns
```

Display ICMP traffic:

```
icmp
```

Display traffic involving Google's DNS server:

```
ip.addr == 8.8.8.8
```

This practical exercise demonstrates the relationship between DNS, IP, and ICMP protocols.

---

## 11. Important Concepts to Remember

|Concept|Meaning|
|---|---|
|Packet|A unit of data at the network layer or a general term for transmitted network data|
|Frame|A data unit at the Data Link layer|
|Capture|The process of collecting network packets|
|Protocol Dissection|Decoding and identifying protocol structures|
|Display Filter|A filter applied to captured packets for display|
|Capture Filter|A filter applied during packet capture|
|PCAP|A common packet capture file format|
|PCAPNG|An extended packet capture file format|
|TCP Stream|A reconstructed TCP communication stream|
|Network Interface|A physical or virtual network connection|

---

## 12. Review Questions

1. What is Wireshark and what is its primary purpose?
    
2. What is the difference between Wireshark and Ping?
    
3. What does Packet Capture mean?
    
4. What is the difference between Capture Filters and Display Filters?
    
5. What is Packet Dissection?
    
6. How does Wireshark analyze TCP and DNS protocols?
    
7. What is the difference between PCAP and PCAPNG?
    
8. Why can't Wireshark automatically capture all traffic on a switched network?
    
9. What is the difference between Wireshark and TShark?
    
10. Can Wireshark inspect the contents of all HTTPS communications?
    
11. What are the three main panes of the Wireshark interface?
    
12. What is the purpose of the Follow TCP Stream feature?
    

---

## Summary

Wireshark is one of the most important tools for network engineers, network administrators, and security analysts.

It provides the ability to capture, inspect, decode, and analyze network packets.

With Wireshark, we can investigate network protocols, troubleshoot connectivity problems, analyze TCP behavior, inspect DNS queries, investigate suspicious traffic, and understand how devices communicate across a network.

Learning Wireshark is an essential skill for anyone working in network engineering, network administration, or cybersecurity.