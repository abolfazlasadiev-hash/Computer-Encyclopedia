# TCP/IP Model

## 1. Introduction

### What is the TCP/IP Model?

The TCP/IP (Transmission Control Protocol / Internet Protocol) Model is a networking reference model that describes how data is transmitted between devices across interconnected networks.

It is the foundation of modern network communication and the Internet.

Unlike the OSI Model, which consists of seven layers, the TCP/IP Model typically consists of four layers.

Each layer has specific responsibilities and works with the other layers to provide end-to-end communication between devices.

The TCP/IP Model defines how:

- Applications communicate over networks.
    
- Data is transported between devices.
    
- IP addresses are used to identify source and destination systems.
    
- Packets are forwarded between different networks.
    
- Data is transmitted through physical network media.
    

### Why is the TCP/IP Model Important?

The TCP/IP Model is important because it provides the practical architecture used by the Internet and most modern computer networks.

Understanding this model helps network engineers:

- Understand how Internet communication works.
    
- Identify the responsibilities of network protocols.
    
- Understand the relationship between TCP, UDP, and IP.
    
- Configure routers, switches, and network services.
    
- Troubleshoot network connectivity problems.
    
- Understand packet transmission and encapsulation.
    

### Four Layers of the TCP/IP Model

The TCP/IP Model consists of four layers:

|Layer|Name|Main Function|
|---|---|---|
|4|Application|Provides network services to applications|
|3|Transport|Provides end-to-end communication|
|2|Internet|Logical addressing and packet routing|
|1|Network Access|Handles frame transmission and physical network access|

### TCP/IP Model vs OSI Model

The TCP/IP Model combines some OSI layers into a smaller number of layers.

|TCP/IP Model|OSI Model|
|---|---|
|Application|Application, Presentation, Session|
|Transport|Transport|
|Internet|Network|
|Network Access|Data Link, Physical|

Main differences:

- OSI has seven layers.
    
- TCP/IP typically has four layers.
    
- OSI is primarily a reference model.
    
- TCP/IP is a practical protocol architecture used for Internet communication.
    
- TCP/IP defines protocols such as TCP, UDP, IP, and ICMP.
    

---

## 2. Concepts

### 2.1 Layer 4 - Application Layer

The Application Layer is the highest layer of the TCP/IP Model.

It provides network services to application software and allows applications to communicate with remote systems.

Unlike the OSI Model, the TCP/IP Application Layer combines the responsibilities of three OSI layers:

- Application Layer
    
- Presentation Layer
    
- Session Layer
    

Main responsibilities:

- Providing network services to applications.
    
- Supporting communication between applications.
    
- Handling application-level protocols.
    
- Data formatting and representation.
    
- Supporting authentication and application sessions.
    
- Supporting encryption through application security protocols.
    

Important protocols:

|Protocol|Description|Port|
|---|---|---|
|HTTP|Transfers web pages|TCP 80|
|HTTPS|Secure web communication|TCP 443|
|FTP|File transfer|TCP 20, 21|
|SFTP|Secure file transfer over SSH|TCP 22|
|SSH|Secure remote access|TCP 22|
|Telnet|Unencrypted remote access|TCP 23|
|DNS|Resolves domain names|UDP/TCP 53|
|DHCP|Automatically assigns IP addresses|UDP 67, 68|
|SMTP|Sends email|TCP 25|
|POP3|Retrieves email|TCP 110|
|IMAP|Manages and retrieves email|TCP 143|
|SNMP|Network monitoring and management|UDP 161, 162|
|NTP|Synchronizes system clocks|UDP 123|
|TFTP|Simple file transfer|UDP 69|

#### Example

When a user opens a website:

`https://www.example.com`

The browser uses HTTP over TLS (HTTPS) to communicate with the web server.

DNS may also be used to resolve the domain name into an IP address.

These protocols operate at the Application Layer of the TCP/IP Model.

Note:

The Application Layer does not mean the application software itself. It refers to the protocols and services that applications use to communicate over the network.

### 2.2 Layer 3 - Transport Layer

The Transport Layer provides communication between applications running on different devices.

It is responsible for delivering data from a source application to a destination application.

The Transport Layer uses Port Numbers to identify application endpoints.

Main responsibilities:

- End-to-End communication.
    
- Application identification using Port Numbers.
    
- Data segmentation.
    
- Data reassembly.
    
- Flow Control.
    
- Error Recovery.
    
- Connection Management.
    
- Multiplexing and Demultiplexing.
    

The two primary Transport Layer protocols are TCP and UDP.

#### TCP (Transmission Control Protocol)

TCP is a Connection-Oriented transport protocol.

It establishes a connection before transferring data.

TCP provides reliable and ordered data delivery through mechanisms such as acknowledgments and retransmissions.

Main characteristics:

- Connection-Oriented.
    
- Reliable Data Delivery.
    
- Sequencing.
    
- Acknowledgment.
    
- Retransmission.
    
- Flow Control.
    
- Congestion Control.
    
- Error Detection.
    

Common applications:

- HTTP
    
- HTTPS
    
- SSH
    
- FTP
    
- SMTP
    
- IMAP
    

#### TCP Three-Way Handshake

TCP establishes a connection using a process called the Three-Way Handshake.

The process consists of three steps:

1. SYN: The client sends a connection request.
    
2. SYN-ACK: The server acknowledges the request.
    
3. ACK: The client confirms the connection.
    

```
Client                         Server
  |                               |
  | -------- SYN ---------------> |
  |                               |
  | <------ SYN-ACK ------------- |
  |                               |
  | -------- ACK ---------------> |
  |                               |
  |       Connection Established  |
```

#### UDP (User Datagram Protocol)

UDP is a Connectionless transport protocol.

It sends data without establishing a connection first.

UDP provides lower protocol overhead compared to TCP but does not guarantee delivery, ordering, or retransmission.

Main characteristics:

- Connectionless.
    
- Low Protocol Overhead.
    
- No Delivery Guarantee.
    
- No Built-in Retransmission.
    
- No Built-in Flow Control.
    
- No Guaranteed Packet Ordering.
    
- Suitable for Delay-Sensitive Applications.
    

Common applications:

- DNS
    
- DHCP
    
- VoIP
    
- Online Gaming
    
- Live Streaming
    
- NTP
    

#### TCP vs UDP

|Feature|TCP|UDP|
|---|---|---|
|Connection|Connection-Oriented|Connectionless|
|Reliability|Reliable|Best Effort|
|Acknowledgment|Yes|No|
|Retransmission|Yes|No|
|Sequencing|Yes|No|
|Flow Control|Yes|No|
|Congestion Control|Yes|No|
|Header Size|Minimum 20 Bytes|8 Bytes|
|Common Usage|HTTPS, SSH, FTP|DNS, DHCP, VoIP|

### 2.3 Layer 2 - Internet Layer

The Internet Layer is responsible for logical addressing and routing packets between different networks.

It allows devices on different networks to communicate with each other.

The Internet Layer uses IP Addresses to identify source and destination devices.

Main responsibilities:

- Logical Addressing.
    
- Packet Forwarding.
    
- Routing.
    
- Path Selection.
    
- Fragmentation in IPv4, where applicable.
    
- Error and Diagnostic Messaging.
    

Important protocols:

|Protocol|Description|
|---|---|
|IPv4|Internet Protocol version 4|
|IPv6|Internet Protocol version 6|
|ICMP|Internet Control Message Protocol|
|ICMPv6|ICMP for IPv6|
|IGMP|Manages IPv4 multicast group membership|
|IPsec|Provides IP-layer security services|

#### IP (Internet Protocol)

IP is the primary protocol of the Internet Layer.

It provides logical addressing and packet delivery between networks.

There are two major versions:

**IPv4**

Example:

`192.168.1.10`

IPv4 uses 32-bit addresses.

**IPv6**

Example:

`2001:db8:1::10`

IPv6 uses 128-bit addresses.

#### ICMP (Internet Control Message Protocol)

ICMP is used for network diagnostic messages and error reporting.

Common uses:

- Ping
    
- Destination Unreachable
    
- Time Exceeded
    
- Network Diagnostics
    

Example:

```
ping 8.8.8.8
```

The ping command uses ICMP Echo Request and Echo Reply messages.

#### Router

A Router is the primary device associated with the Internet Layer.

It forwards IP packets between different networks using its Routing Table.

Example:

Network A:

`192.168.1.0/24`

Network B:

`192.168.2.0/24`

If a device in Network A wants to communicate with a device in Network B, the packet is forwarded through a Router.

### 2.4 Layer 1 - Network Access Layer

The Network Access Layer is the lowest layer of the TCP/IP Model.

It is responsible for delivering data across the local network and accessing the physical transmission medium.

This layer combines the responsibilities of two OSI layers:

- Data Link Layer.
    
- Physical Layer.
    

Main responsibilities:

- Frame Transmission.
    
- MAC Addressing.
    
- Physical Addressing.
    
- Media Access Control.
    
- Error Detection at the link layer.
    
- Physical Signal Transmission.
    
- Access to Wired and Wireless Networks.
    

Important technologies:

|Technology|Description|
|---|---|
|Ethernet|Wired LAN technology|
|Wi-Fi|Wireless LAN technology|
|PPP|Point-to-Point Protocol|
|VLAN|Logical LAN segmentation|
|ARP|IPv4 address-to-MAC resolution|
|Fiber Optic|Optical transmission medium|
|UTP|Copper Ethernet cabling|

#### MAC Address

A MAC Address identifies a network interface at the Data Link level.

Example:

`00:1A:2B:3C:4D:5E`

MAC Addresses are used for local network communication.

#### Ethernet

Ethernet is one of the most widely used technologies at the Network Access Layer.

It defines frame formats and mechanisms for communication over wired local networks.

#### Switch

An Ethernet Switch primarily operates at Layer 2 of the OSI Model.

It forwards Ethernet Frames based on destination MAC Addresses.

#### Physical Media

The Network Access Layer also covers the physical transmission of information through media such as:

- UTP Cables.
    
- Fiber Optic Cables.
    
- Wireless Radio Signals.
    

### 2.5 Important TCP/IP Protocols

The TCP/IP architecture contains several protocols that work together.

|Protocol|TCP/IP Layer|Main Function|
|---|---|---|
|HTTP|Application|Web communication|
|HTTPS|Application|Secure web communication|
|DNS|Application|Domain name resolution|
|DHCP|Application|Automatic IP configuration|
|FTP|Application|File transfer|
|SSH|Application|Secure remote access|
|SMTP|Application|Email transmission|
|TCP|Transport|Reliable data delivery|
|UDP|Transport|Connectionless data delivery|
|IPv4|Internet|Logical addressing|
|IPv6|Internet|Next-generation addressing|
|ICMP|Internet|Network diagnostics|
|ARP|Network Access|IPv4-to-MAC resolution|
|Ethernet|Network Access|Wired LAN communication|

Note:

ARP is generally associated with the Network Access Layer in the TCP/IP Model, although it performs an address-resolution function that connects IP and Ethernet communication.

---

### 2.6 TCP/IP Addressing

Different addressing mechanisms are used at different layers.

|TCP/IP Layer|Address|Example|
|---|---|---|
|Application|Domain Name|google.com|
|Transport|Port Number|443|
|Internet|IP Address|192.168.1.10|
|Network Access|MAC Address|00:1A:2B:3C:4D:5E|

Each address serves a different purpose.

- Domain Name identifies a network service using a human-readable name.
    
- Port Number identifies an application endpoint.
    
- IP Address identifies a logical network endpoint.
    
- MAC Address identifies a network interface on a local link.
    

### 2.7 TCP/IP PDU

Each layer uses a specific name for the data it processes.

|TCP/IP Layer|PDU|
|---|---|
|Application|Data|
|Transport|Segment (TCP) / Datagram (UDP)|
|Internet|Packet|
|Network Access|Frame|
|Physical Transmission|Bits|

Note:

The TCP/IP Model typically has four layers. Bits represent the physical transmission of a frame rather than a separate fifth TCP/IP layer.

---

## 3. How It Works

### 3.1 Encapsulation in TCP/IP

Encapsulation is the process of adding protocol-specific information to data as it moves from the Application Layer toward the Network Access Layer.

Each layer adds its own header.

The Data Link Layer may also add a trailer.

Encapsulation process:

1. The Application Layer generates the data.
    
2. The Transport Layer adds a TCP or UDP header.
    
3. The Internet Layer adds an IP header.
    
4. The Network Access Layer adds an Ethernet or Wi-Fi header and trailer.
    
5. The Physical medium transmits the information as signals.
    

Structure:

```
Application Layer
       |
       v
      Data
       |
       v
Transport Layer
       |
       v
   Segment
       |
       v
Internet Layer
       |
       v
    Packet
       |
       v
Network Access Layer
       |
       v
     Frame
       |
       v
Physical Transmission
       |
       v
      Bits
```

### 3.2 Decapsulation in TCP/IP

Decapsulation is the reverse process of Encapsulation.

When data reaches the destination device, each layer processes the corresponding protocol information.

Decapsulation process:

1. The Network Access Layer receives the Frame.
    
2. The Internet Layer processes the IP Packet.
    
3. The Transport Layer processes the TCP Segment or UDP Datagram.
    
4. The Application Layer receives the application data.
    

Structure:

```
Bits
  |
  v
Network Access Layer
  |
  v
Frame
  |
  v
Internet Layer
  |
  v
Packet
  |
  v
Transport Layer
  |
  v
Segment / Datagram
  |
  v
Application Layer
  |
  v
Data
```

### 3.3 Example: Accessing a Website

Imagine that a user wants to access:

`https://www.example.com`

The communication process works as follows:

**Step 1 - Application Layer**

The browser generates an HTTPS request.

DNS may first resolve the domain name into an IP Address.

**Step 2 - Transport Layer**

TCP is used to establish a connection with the destination server.

The client uses an ephemeral source port, and the destination port is 443.

The TCP Three-Way Handshake is performed.

**Step 3 - Internet Layer**

The source and destination IP Addresses are added to the packet.

Example:

```
Source IP:      192.168.1.10
Destination IP: 93.184.216.34
```

**Step 4 - Network Access Layer**

The computer determines whether the destination belongs to the local network.

If the destination is outside the local network, the Frame is sent to the Default Gateway's MAC Address.

ARP may be used to discover the Default Gateway's MAC Address.

**Step 5 - Physical Transmission**

The Ethernet Frame is transmitted through the network cable as electrical signals.

In a wireless network, the information is transmitted using radio signals.

### 3.4 What Happens at a Router?

When a packet reaches a Router:

1. The Router receives the incoming Frame.
    
2. It processes the Data Link header.
    
3. It extracts the IP Packet.
    
4. It examines the destination IP Address.
    
5. It checks the Routing Table.
    
6. It selects the appropriate Next Hop.
    
7. It decrements the IPv4 TTL or IPv6 Hop Limit.
    
8. It creates a new Frame for the outgoing interface.
    
9. It forwards the packet.
    

Important note:

Under normal routing conditions:

- Source and destination IP Addresses remain unchanged.
    
- Source and destination MAC Addresses are replaced for the next link.
    
- The Ethernet Frame is rebuilt at every routed hop.
    

NAT can modify IP Addresses and transport-layer port numbers.

### 3.5 End-to-End Communication

The TCP/IP Model provides communication between applications on different devices.

For example:

```
PC1
 |
 | Application Data
 |
 v
TCP / UDP
 |
 v
IP Packet
 |
 v
Ethernet Frame
 |
 v
Switch
 |
 v
Router
 |
 v
Internet
 |
 v
Router
 |
 v
Switch
 |
 v
Server
```

The source device encapsulates the data, network devices forward the packets, and the destination device decapsulates the information.

---

## 4. Configuration / Examples

### 4.1 Checking IP Configuration on Windows

To display basic network information:

```
ipconfig
```

To display detailed configuration:

```
ipconfig /all
```

Important information:

- IPv4 Address
    
- Subnet Mask
    
- Default Gateway
    
- DNS Servers
    
- Physical Address
    
- DHCP Status
    

### 4.2 Checking IP Configuration on Linux

To display IP Addresses:

```
ip addr
```

To display network interfaces:

```
ip link
```

To display the Routing Table:

```
ip route
```

To display DNS configuration:

```
resolvectl status
```

### 4.3 Testing Network Connectivity

To test connectivity to a destination:

Windows:

```
ping 8.8.8.8
```

Linux:

```
ping -c 4 8.8.8.8
```

To test the Default Gateway:

```
ping 192.168.1.1
```

### 4.4 Testing DNS Resolution

Windows:

```
nslookup google.com
```

Linux:

```
dig google.com
```

Alternatively:

```
nslookup google.com
```

### 4.5 Testing TCP Connectivity

Windows PowerShell:

```
Test-NetConnection google.com -Port 443
```

Linux:

```
nc -zv google.com 443
```

These commands help verify whether a TCP connection can be established to the specified destination port.

### 4.6 Checking the Network Path

Windows:

```
tracert 8.8.8.8
```

Linux:

```
traceroute 8.8.8.8
```

These commands help identify the routers along the path to a destination.

### 4.7 Checking TCP and UDP Connections

Windows:

```
netstat -ano
```

Linux:

```
ss -tulnp
```

To display TCP connections:

```
ss -tn
```

To display UDP sockets:

```
ss -un
```

### 4.8 Cisco Router Configuration Example

Imagine a Router with two interfaces connected to two different networks.

Network A:

`192.168.1.0/24`

Network B:

`192.168.2.0/24`

Basic Cisco IOS configuration:

```
enable
configure terminal

interface gigabitEthernet 0/0
 description LAN-A
 ip address 192.168.1.1 255.255.255.0
 no shutdown
 exit

interface gigabitEthernet 0/1
 description LAN-B
 ip address 192.168.2.1 255.255.255.0
 no shutdown
 exit

end
```

Verify interface configuration:

```
show ip interface brief
```

Verify routing information:

```
show ip route
```

Since both networks are directly connected, the Router automatically adds connected routes to its Routing Table.

### 4.9 Cisco Switch Configuration Example

To configure a basic Access Port:

```
enable
configure terminal

vlan 10
 name USERS
 exit

interface gigabitEthernet 0/1
 switchport mode access
 switchport access vlan 10
 no shutdown
 exit

end
```

Verify VLAN configuration:

```
show vlan brief
```

Verify MAC Address Learning:

```
show mac address-table
```

---

## 5. Troubleshooting

The TCP/IP Model can be used as a structured approach to network troubleshooting.

Since it consists of four layers, troubleshooting can be organized according to the responsibilities of each layer.

### 5.1 Network Access Layer Troubleshooting

Common problems:

- Network cable is disconnected.
    
- Ethernet interface is disabled.
    
- Switch port is down.
    
- Incorrect VLAN configuration.
    
- MAC Address Learning problems.
    
- Wi-Fi connection issues.
    
- Physical transmission problems.
    

Useful commands:

Windows:

```
ipconfig /all
```

Linux:

```
ip link
```

Cisco:

```
show interfaces status
show interfaces
show vlan brief
show mac address-table
```

Things to check:

- Physical Link Status.
    
- Cable Condition.
    
- Interface Status.
    
- VLAN Membership.
    
- MAC Address Table.
    
- Wireless Signal Strength.
    

### 5.2 Internet Layer Troubleshooting

Common problems:

- Incorrect IP Address.
    
- Incorrect Subnet Mask.
    
- Incorrect Default Gateway.
    
- Missing Routing Entries.
    
- Incorrect Static Routes.
    
- Routing Protocol Problems.
    
- IP Address Conflicts.
    
- Packet Loss.
    

Useful commands:

Windows:

```
ipconfig /all
route print
ping 192.168.1.1
```

Linux:

```
ip addr
ip route
ping 192.168.1.1
```

Cisco:

```
show ip interface brief
show ip route
show ip protocols
```

Things to check:

- IP Address.
    
- Subnet Mask.
    
- Default Gateway.
    
- Routing Table.
    
- Next Hop.
    
- Interface Status.
    
- ICMP Connectivity.
    

### 5.3 Transport Layer Troubleshooting

Common problems:

- TCP port is closed.
    
- UDP traffic is blocked.
    
- Firewall blocks connections.
    
- TCP connection cannot be established.
    
- Application is listening on the wrong port.
    
- Packet loss affects communication.
    

Useful commands:

Windows:

```
Test-NetConnection example.com -Port 443
```

Linux:

```
ss -tulnp
```

```
nc -zv example.com 443
```

To inspect TCP connections:

```
netstat -ano
```

Things to check:

- TCP Connection Status.
    
- UDP Sockets.
    
- Source Port.
    
- Destination Port.
    
- Firewall Rules.
    
- Listening Services.
    
- Connection Timeouts.
    

### 5.4 Application Layer Troubleshooting

Common problems:

- DNS resolution fails.
    
- HTTP or HTTPS service is unavailable.
    
- Incorrect application configuration.
    
- Authentication problems.
    
- Web server is not responding.
    
- Application protocol errors.
    

Useful commands:

DNS:

```
nslookup google.com
```

HTTP/HTTPS:

```
curl -I https://example.com
```

DNS detailed query:

```
dig example.com
```

To test a DNS server directly:

```
nslookup google.com 8.8.8.8
```

Things to check:

- DNS Resolution.
    
- Application Configuration.
    
- Web Server Availability.
    
- HTTP Response Codes.
    
- TLS Certificates.
    
- Authentication.
    
- Application Logs.
    

### 5.5 TCP/IP Troubleshooting Checklist

|TCP/IP Layer|What to Check|Useful Commands|
|---|---|---|
|Application|DNS, HTTP, Services|nslookup, dig, curl|
|Transport|TCP, UDP, Ports|netstat, ss, nc|
|Internet|IP, Gateway, Routing|ping, ip route, tracert|
|Network Access|Cable, VLAN, MAC, Link|show interfaces, show vlan brief|

### 5.6 Example: Cannot Access a Website

Imagine that a user cannot open a website.

A structured troubleshooting process:

**Step 1 - Check Network Access**

Verify that the Ethernet cable is connected or Wi-Fi is working.

Check the network interface:

```
ipconfig /all
```

**Step 2 - Check IP Connectivity**

Ping the Default Gateway:

```
ping 192.168.1.1
```

Ping a public IP Address:

```
ping 8.8.8.8
```

**Step 3 - Check DNS**

Resolve the website domain:

```
nslookup google.com
```

**Step 4 - Check Transport Connectivity**

Test HTTPS connectivity:

```
Test-NetConnection google.com -Port 443
```

**Step 5 - Check Application Availability**

Send an HTTP request:

```
curl -I https://google.com
```

Based on the results, the problem can be narrowed down to the appropriate TCP/IP layer.

Note:

A successful ping does not guarantee that a website is accessible. ICMP, DNS, TCP, and application services must be tested independently when necessary.

---

## 6. Practical Notes

### 6.1 Important Points to Remember

- The TCP/IP Model typically consists of four layers.
    
- Application Layer provides services to applications.
    
- Transport Layer provides End-to-End communication.
    
- Internet Layer handles IP addressing and routing.
    
- Network Access Layer handles local network communication and physical transmission.
    
- TCP provides reliable, connection-oriented communication.
    
- UDP provides connectionless communication.
    
- IP is responsible for logical addressing and packet delivery.
    
- MAC Addresses are used for local network communication.
    
- Port Numbers identify application endpoints.
    
- Encapsulation occurs when data moves toward lower layers.
    
- Decapsulation occurs when data is processed at the destination.
    

### 6.2 TCP/IP vs OSI Model

|Feature|OSI Model|TCP/IP Model|
|---|---|---|
|Number of Layers|7|4|
|Type|Reference Model|Protocol Architecture|
|Development|ISO|DARPA / DoD research|
|Main Purpose|Standardizing network communication concepts|Practical network communication|
|Application Layers|3|1|
|Transport Layer|Yes|Yes|
|Network Layer|Yes|Internet Layer|
|Physical and Data Link|Separate|Combined|

### 6.3 Important Protocols by Layer

|Layer|Important Protocols|
|---|---|
|Application|HTTP, HTTPS, DNS, DHCP, FTP, SSH, SMTP, SNMP, NTP|
|Transport|TCP, UDP|
|Internet|IPv4, IPv6, ICMP, ICMPv6, IGMP|
|Network Access|Ethernet, Wi-Fi, PPP, ARP|

### 6.4 Common Interview Questions

**Q1: What is the TCP/IP Model?**

The TCP/IP Model is a networking architecture that describes how data is transmitted between devices across interconnected networks.

**Q2: How many layers does the TCP/IP Model have?**

It typically has four layers.

**Q3: What are the four TCP/IP layers?**

1. Application
    
2. Transport
    
3. Internet
    
4. Network Access
    

**Q4: What is the main difference between OSI and TCP/IP?**

OSI has seven layers, while TCP/IP typically has four layers.

**Q5: Which TCP/IP layer uses TCP and UDP?**

The Transport Layer.

**Q6: Which TCP/IP layer uses IP Addresses?**

The Internet Layer.

**Q7: Which TCP/IP layer handles MAC Addresses?**

The Network Access Layer.

**Q8: What is the purpose of TCP?**

TCP provides reliable, connection-oriented data transmission.

**Q9: What is the purpose of UDP?**

UDP provides connectionless data transmission with lower protocol overhead.

**Q10: What is the TCP Three-Way Handshake?**

It is the three-step process used to establish a TCP connection:

- SYN
    
- SYN-ACK
    
- ACK
    

**Q11: What is Encapsulation?**

Encapsulation is the process of adding protocol-specific headers and trailers to data as it moves through the network layers.

**Q12: What is Decapsulation?**

Decapsulation is the process of processing and removing protocol-specific information at the destination.

**Q13: What is the PDU of the Internet Layer?**

Packet.

**Q14: What is the PDU of TCP?**

Segment.

**Q15: What is the PDU of UDP?**

Datagram.

**Q16: What is the role of a Router in the TCP/IP Model?**

A Router forwards IP packets between different networks using its Routing Table.

**Q17: What is the role of DNS?**

DNS translates domain names into IP Addresses.

**Q18: What is the role of DHCP?**

DHCP automatically provides IP configuration to network clients.

### 6.5 Practical Lab

**Lab 1: Understanding Network Access Layer**

Objective: Understand local network connectivity.

Steps:

1. Connect two computers to a Switch.
    
2. Verify physical connectivity.
    
3. Check the interface status.
    
4. Generate traffic between the computers.
    
5. Examine the MAC Address Table.
    

Commands:

```
show interfaces status
show mac address-table
```

**Lab 2: Understanding Internet Layer**

Objective: Configure IP communication between two networks.

Network A:

```
Network: 192.168.1.0/24
Gateway: 192.168.1.1
```

Network B:

```
Network: 192.168.2.0/24
Gateway: 192.168.2.1
```

Router configuration:

```
enable
configure terminal

interface gigabitEthernet 0/0
 ip address 192.168.1.1 255.255.255.0
 no shutdown
 exit

interface gigabitEthernet 0/1
 ip address 192.168.2.1 255.255.255.0
 no shutdown
 exit

end
```

Test connectivity:

```
ping 192.168.2.1
```

**Lab 3: Understanding Transport Layer**

Objective: Test TCP connectivity.

On Windows:

```
Test-NetConnection google.com -Port 443
```

On Linux:

```
nc -zv google.com 443
```

**Lab 4: Understanding Application Layer**

Objective: Test DNS and HTTP communication.

DNS:

```
nslookup google.com
```

HTTP/HTTPS:

```
curl -I https://google.com
```

**Lab 5: Understanding TCP Three-Way Handshake**

Objective: Observe the TCP connection establishment process.

Steps:

1. Open Wireshark.
    
2. Start capturing network traffic.
    
3. Open a website.
    
4. Apply the following display filter:
    

```
tcp.flags.syn == 1
```

5. Find the TCP connection establishment packets.
    
6. Identify SYN, SYN-ACK, and ACK.
    

### 6.6 Wireshark and TCP/IP Model

Wireshark is a network packet analysis tool that helps inspect communication at different TCP/IP layers.

Examples of useful display filters:

|Protocol|Wireshark Filter|
|---|---|
|Ethernet / ARP|arp|
|IPv4|ip|
|IPv6|ipv6|
|ICMP|icmp|
|TCP|tcp|
|UDP|udp|
|DNS|dns|
|HTTP|http|
|DHCP|dhcp|
|TLS|tls|

Useful filters:

To display DNS traffic:

```
dns
```

To display TCP traffic:

```
tcp
```

To display UDP traffic:

```
udp
```

To display ICMP traffic:

```
icmp
```

To display HTTPS-related TLS traffic:

```
tls
```

To display traffic between two IP Addresses:

```
ip.addr == 192.168.1.10
```

To display traffic using TCP port 443:

```
tcp.port == 443
```

### 6.7 Important Practical Concepts

**Concept 1: TCP/IP Is the Foundation of the Internet**

The TCP/IP architecture provides the protocols and mechanisms required for communication across interconnected networks.

**Concept 2: IP Does Not Guarantee Delivery**

IP provides connectionless, best-effort packet delivery.

Reliability, when required, is provided by higher-layer protocols such as TCP.

**Concept 3: TCP and UDP Serve Different Purposes**

TCP is suitable for applications that require reliable and ordered data delivery.

UDP is suitable for applications that prioritize low latency or implement their own reliability mechanisms.

**Concept 4: Routers Operate at the Internet Layer**

Routers examine destination IP Addresses and use Routing Tables to forward packets.

**Concept 5: Network Access Handles Local Communication**

The Network Access Layer handles local link communication, framing, MAC addressing, and access to the physical medium.

**Concept 6: TCP/IP Layers Work Together**

No single layer provides complete network communication independently.

The layers cooperate to deliver application data from the source to the destination.

---

## Summary

The TCP/IP Model is the foundation of modern network communication and the Internet.

It explains how applications communicate, how data is transported, how IP packets are routed, and how information is transmitted through local network technologies.

|Layer|Name|PDU|Main Function|
|---|---|---|---|
|4|Application|Data|Network Services|
|3|Transport|Segment / Datagram|End-to-End Communication|
|2|Internet|Packet|IP Addressing and Routing|
|1|Network Access|Frame|Local Network Communication|

**Learning Priority:**

To build a strong Networking foundation, focus on the following concepts:

1. Application Layer Protocols.
    
2. TCP and UDP.
    
3. TCP Three-Way Handshake.
    
4. IPv4 and IPv6.
    
5. IP Routing.
    
6. Ethernet and MAC Addressing.
    
7. Encapsulation and Decapsulation.
    
8. Network Troubleshooting.
    

Understanding the TCP/IP Model makes it easier to learn more advanced networking topics such as Switching, Routing, VLANs, OSPF, BGP, NAT, Firewalls, and Network Security.