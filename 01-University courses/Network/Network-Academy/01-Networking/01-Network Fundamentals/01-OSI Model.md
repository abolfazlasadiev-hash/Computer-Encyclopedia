# OSI Model

## 1. Introduction

### What is the OSI Model?

The OSI (Open Systems Interconnection) Model is a reference model that explains how different systems communicate with each other over a computer network.

It was developed by the International Organization for Standardization (ISO) and divides network communication into seven layers.

The main purpose of the OSI Model is to break down the network communication process into smaller, manageable components.

Using this model, we can:

- Understand how data is transmitted across networks.
    
- Identify the responsibilities of each network layer.
    
- Troubleshoot network problems more easily.
    
- Understand the relationship between network protocols and devices.
    
- Standardize network design and implementation.
    

### Why is the OSI Model Important?

Imagine that a computer wants to connect to a website.

During this process, information must pass through several stages, starting from the application that generates the request and ending with the network interface that transmits the data.

At the destination, the information must go through the reverse process before reaching the intended application.

The OSI Model divides this entire process into seven layers.

### Seven Layers of the OSI Model

The seven OSI layers, from top to bottom, are:

|Layer|Name|Main Function|
|---|---|---|
|7|Application|Provides network services to applications|
|6|Presentation|Data formatting, encryption, and compression|
|5|Session|Manages communication sessions|
|4|Transport|Transfers data between source and destination systems|
|3|Network|Logical addressing and routing|
|2|Data Link|Frame transmission over a local network|
|1|Physical|Transmits bits through physical media|

### OSI Layers Mnemonic

To remember the layers from top to bottom:

**All People Seem To Need Data Processing**

To remember the layers from bottom to top:

**Please Do Not Throw Sausage Pizza Away**

---

## 2. Concepts

### 2.1 Layer 7 - Application Layer

The **Application Layer** is the highest layer of the OSI Model.

It provides network services to application software.

This layer is responsible for providing the protocols and services that applications use to communicate over a network.

Main responsibilities:

- Providing network services to applications.
    
- Supporting communication requests.
    
- Providing access to services such as Web, Email, and File Transfer.
    
- Providing an interface between applications and network services.
    

Important protocols:

|Protocol|Description|Port|
|---|---|---|
|HTTP|Transfers web pages|TCP 80|
|HTTPS|Secure web communication|TCP 443|
|FTP|File Transfer Protocol|TCP 20, 21|
|SSH|Secure remote access|TCP 22|
|DNS|Resolves domain names to IP addresses|UDP/TCP 53|
|DHCP|Automatically assigns IP addresses|UDP 67, 68|
|SMTP|Sends email|TCP 25|
|POP3|Retrieves email|TCP 110|
|IMAP|Manages and retrieves email|TCP 143|
|SNMP|Manages network devices|UDP 161, 162|

Example:

When you enter the following address in a web browser:

`https://www.example.com`

The browser uses the HTTPS protocol to communicate with the web server.

From the OSI Model perspective, this communication is associated with the Application Layer.

Note:

The Application Layer is not the browser or application itself. It defines the network services and protocols that applications use for communication.

### 2.2 Layer 6 - Presentation Layer

The **Presentation Layer** is responsible for preparing and transforming data before it is exchanged between systems.

This layer defines how data is represented, encrypted, and compressed.

Main responsibilities:

- Data Translation: Converting data formats.
    
- Data Encryption: Encrypting information.
    
- Data Decryption: Decrypting information.
    
- Data Compression: Reducing data size.
    
- Data Formatting: Formatting data for communication.
    

Examples of related technologies and formats:

|Technology|Function|
|---|---|
|UTF-8|Character encoding|
|ASCII|Character representation|
|JPEG|Image format|
|PNG|Image format|
|MPEG|Video compression standards|
|TLS|Secures communication|

Example:

Imagine that a user sends confidential information through HTTPS.

The information must be encrypted so that unauthorized users cannot read its contents.

Conceptually, this type of functionality is associated with the Presentation Layer.

Note:

In modern networks, Presentation Layer functions are usually implemented by libraries, operating systems, and protocols such as TLS. They do not necessarily exist as a separate software layer.

### 2.3 Layer 5 - Session Layer

The **Session Layer** is responsible for managing communication sessions between systems.

A session defines how communication between two systems is established, maintained, managed, and terminated.

Main responsibilities:

- Session Establishment: Creating a session.
    
- Session Management: Managing a session.
    
- Session Maintenance: Maintaining a session.
    
- Session Termination: Ending a session.
    
- Dialog Control: Managing communication between systems.
    
- Synchronization: Synchronizing communication.
    

Example:

Imagine that a user logs in to a remote system.

During the connection, the system needs to manage the user's session state.

When the communication ends, the session should be terminated properly.

This concept is associated with the responsibilities of the Session Layer.

Note:

In modern networks, session management is often handled by the Application Layer or specific application protocols.

### 2.4 Layer 4 - Transport Layer

The **Transport Layer** is responsible for transferring data between source and destination applications.

It manages End-to-End communication and determines how information is transported between two systems.

Main responsibilities:

- Dividing data into smaller units.
    
- Managing communication between applications.
    
- Using Port Numbers.
    
- Flow Control.
    
- Error recovery and retransmission in reliable protocols.
    
- Maintaining data delivery order.
    

The two main protocols at this layer are:

#### TCP (Transmission Control Protocol)

TCP is a Connection-Oriented protocol.

Before data transmission begins, a connection is established between the two systems.

TCP characteristics:

- Reliable Delivery
    
- Connection-Oriented
    
- Sequencing
    
- Acknowledgment
    
- Retransmission
    
- Flow Control
    
- Congestion Control
    

Common applications:

- HTTPS
    
- SSH
    
- FTP
    
- Email
    

#### UDP (User Datagram Protocol)

UDP is a Connectionless protocol.

It does not require an initial connection to be established before sending data.

UDP characteristics:

- No connection establishment phase.
    
- Lower protocol overhead.
    
- No guaranteed data delivery.
    
- No guaranteed delivery order.
    
- Suitable for delay-sensitive applications.
    

Common applications:

- DNS
    
- DHCP
    
- VoIP
    
- Online Gaming
    
- Streaming
    

#### TCP vs UDP

|Feature|TCP|UDP|
|---|---|---|
|Connection|Connection-Oriented|Connectionless|
|Reliability|Reliable|Best Effort|
|Acknowledgment|Yes|No|
|Retransmission|Yes|No|
|Sequencing|Yes|No|
|Speed|Generally higher overhead|Generally lower overhead|
|Header Size|Minimum 20 Bytes|8 Bytes|
|Common Usage|HTTPS, SSH|DNS, DHCP, VoIP|

#### Port Number

The Transport Layer uses Port Numbers to identify application endpoints or services.

Examples:

- HTTP: Port 80
    
- HTTPS: Port 443
    
- SSH: Port 22
    
- DNS: Port 53
    

Imagine that a computer is simultaneously running a web browser and an SSH client.

The IP Address identifies the destination system, while the Port Number identifies the destination service or application endpoint.

### 2.5 Layer 3 - Network Layer

The **Network Layer** is responsible for logical addressing and routing information between different networks.

This layer determines the path that packets should follow to reach their destination.

Main responsibilities:

- Logical Addressing
    
- Routing
    
- Packet Forwarding
    
- Path Selection
    
- IPv4 Fragmentation, where applicable
    
- Next-Hop Determination
    

Important related protocols:

|Protocol|Function|
|---|---|
|IPv4|Addressing and packet delivery|
|IPv6|Next-generation IP addressing|
|ICMP|Control and error messaging|
|OSPF|Routing protocol|
|RIP|Routing protocol|
|EIGRP|Routing protocol|
|BGP|Routing between Autonomous Systems|

#### IP Address

This layer uses IP Addresses to logically identify devices and network interfaces.

Example:

`192.168.1.10`

This is an IPv4 Address.

#### Router

A Router is one of the most important devices associated with the Network Layer.

Its primary responsibility is forwarding packets between different networks.

Example:

Imagine that we have two networks:

- Network A: `192.168.1.0/24`
    
- Network B: `192.168.2.0/24`
    

If a computer in Network A wants to communicate with a computer in Network B, the packet usually needs to pass through a Router.

The Router examines its Routing Table to select the appropriate path.

### 2.6 Layer 2 - Data Link Layer

The **Data Link Layer** is responsible for transferring information between devices connected through the same network link or local network.

This layer organizes information into Frames.

Main responsibilities:

- Physical Addressing
    
- Framing
    
- MAC Address Processing
    
- Error Detection
    
- Media Access Control
    
- VLAN Tagging
    
- Controlling access to the transmission medium
    

The Data Link Layer consists of two sublayers:

#### LLC (Logical Link Control)

Responsibilities include:

- Identifying upper-layer protocols.
    
- Providing a logical interface between the Network Layer and MAC sublayer.
    

#### MAC (Media Access Control)

Responsibilities include:

- Using MAC Addresses.
    
- Managing access to the transmission medium.
    
- Handling the MAC-related parts of Ethernet framing.
    

#### MAC Address

A MAC Address is a hardware-level address used to identify a network interface at the Data Link Layer.

Example:

`00:1A:2B:3C:4D:5E`

#### Switch

A Switch is one of the primary devices associated with Layer 2.

A Switch uses its MAC Address Table to determine which port should receive a Frame.

Example:

If PC1 is connected to Port 1 and PC2 is connected to Port 2, the Switch learns their MAC Addresses and can forward Frames to the appropriate ports.

#### Ethernet Frame

A simplified Ethernet Frame structure:

|Field|Description|
|---|---|
|Destination MAC|Destination MAC Address|
|Source MAC|Source MAC Address|
|Type/Length|Upper-layer protocol type or frame length|
|Data|Payload|
|FCS|Frame error detection|

In standard Ethernet, the Preamble and SFD fields appear before the Frame and are not considered part of the Ethernet Frame itself.

### 2.7 Layer 1 - Physical Layer

The **Physical Layer** is the lowest layer of the OSI Model.

It is responsible for transmitting bits through physical transmission media.

At this layer, information is transmitted as electrical signals, optical signals, or radio waves.

Main responsibilities:

- Bit transmission.
    
- Defining physical cable specifications.
    
- Defining connector types.
    
- Defining signal characteristics.
    
- Defining transmission speeds.
    
- Defining physical interface characteristics.
    
- Specifying transmission media.
    

Related devices and media:

|Device / Medium|Description|
|---|---|
|UTP Cable|Copper network cable|
|Fiber Optic|Fiber-optic cable|
|Coaxial Cable|Coaxial cable|
|Hub|Signal repeater|
|Repeater|Regenerates signals|
|Ethernet Physical Interface|Physical network interface|

Example:

When a computer sends information through an Ethernet cable, its Network Interface Card (NIC) converts the information into signals suitable for transmission over the physical medium.

This process takes place at the Physical Layer.

---

### 2.8 PDU in the OSI Model

Each OSI layer uses a specific name for the data it processes during transmission.

These names are called Protocol Data Units (PDUs).

|OSI Layer|PDU|
|---|---|
|Layer 7 - Application|Data|
|Layer 6 - Presentation|Data|
|Layer 5 - Session|Data|
|Layer 4 - Transport|Segment (TCP) / Datagram (UDP)|
|Layer 3 - Network|Packet|
|Layer 2 - Data Link|Frame|
|Layer 1 - Physical|Bits|

Note:

The Transport Layer PDU name depends on the protocol:

- TCP: Segment
    
- UDP: Datagram
    

### 2.9 Addressing in the OSI Model

Different types of addresses are used in networking to identify devices and application endpoints.

|Layer|Address|Example|
|---|---|---|
|Layer 4|Port Number|443|
|Layer 3|IP Address|192.168.1.10|
|Layer 2|MAC Address|00:1A:2B:3C:4D:5E|
|Layer 1|Physical Signal|Electrical / Optical / Radio|

Differences:

- MAC Address is used for communication at the local link level.
    
- IP Address is used for logical identification of source and destination across networks.
    
- Port Number identifies an application endpoint or service at the Transport Layer.
    

### 2.10 Network Devices and OSI Layers

Network devices can be categorized according to their primary functions in the OSI Model.

|Device|OSI Layer|Function|
|---|---|---|
|Hub|Layer 1|Repeats signals|
|Repeater|Layer 1|Regenerates signals|
|Ethernet Switch|Layer 2|Forwards frames based on MAC Addresses|
|Bridge|Layer 2|Connects and separates network segments|
|Router|Layer 3|Routes packets based on IP Addresses|
|Layer 3 Switch|Layer 2 / 3|Switching and Routing|
|Firewall|Layer 3 / 4 / 7|Controls traffic depending on firewall type|
|Load Balancer|Layer 4 / 7|Distributes connection and application traffic|

Note:

This classification is intended for conceptual understanding. Modern network devices can operate across multiple OSI layers.

---

## 3. How It Works

### 3.1 Encapsulation

Encapsulation is the process in which data receives additional control information as it moves from higher layers to lower layers.

This additional information is generally called a Header.

Some layers may also add a Trailer.

Encapsulation steps:

1. The Application Layer generates the data.
    
2. The Presentation Layer prepares the data in the appropriate format.
    
3. The Session Layer manages the communication session.
    
4. The Transport Layer adds a TCP or UDP header.
    
5. The Network Layer adds an IP header.
    
6. The Data Link Layer adds an Ethernet header and trailer.
    
7. The Physical Layer transmits the bits through the transmission medium.
    

Conceptual structure:

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
Network Layer
       |
       v
    Packet
       |
       v
Data Link Layer
       |
       v
     Frame
       |
       v
Physical Layer
       |
       v
      Bits
```

### 3.2 Decapsulation

Decapsulation is the reverse process of Encapsulation.

When information reaches the destination system, each layer processes and, where appropriate, removes its corresponding control information.

Steps:

1. The Physical Layer receives the bits.
    
2. The Data Link Layer processes the Frame.
    
3. The Network Layer examines the IP header.
    
4. The Transport Layer processes the TCP or UDP information.
    
5. The upper layers deliver the data to the destination application.
    

Structure:

```
Bits
  |
  v
Physical Layer
  |
  v
Frame
  |
  v
Data Link Layer
  |
  v
Packet
  |
  v
Network Layer
  |
  v
Segment / Datagram
  |
  v
Transport Layer
  |
  v
Data
  |
  v
Application
```

### 3.3 Example: Accessing a Website

Imagine that your computer wants to access the following address:

`https://www.example.com`

Communication process:

**Step 1 - Application Layer**

The browser generates a request to access the website.

The HTTPS protocol is used.

**Step 2 - Presentation Layer**

The information required for secure communication is prepared and encrypted using TLS.

**Step 3 - Session Layer**

Session management is performed conceptually.

**Step 4 - Transport Layer**

TCP is selected for data transmission.

A TCP connection is established using the Three-Way Handshake process.

The destination port for HTTPS is 443.

**Step 5 - Network Layer**

The source and destination IP Addresses are identified.

Example:

```
Source IP:      192.168.1.10
Destination IP: 93.184.216.34
```

**Step 6 - Data Link Layer**

The computer determines whether the destination is located on the local network.

If the destination is outside the local network, the Frame is sent to the MAC Address of the Default Gateway.

**Step 7 - Physical Layer**

The information is converted into bits and transmitted through a cable or wireless medium.

### 3.4 What Happens at Each Router?

When a Packet passes through multiple Routers:

- The Frame from the previous link is received.
    
- The Router processes the Data Link information.
    
- The IP header is examined.
    
- The Routing Table is used to select the Next Hop.
    
- The TTL field is decremented in IPv4.
    
- A new Frame is created for the next link.
    

Important note:

Under normal routing conditions, the source and destination IP Addresses remain unchanged along the path. However, the source and destination MAC Addresses change at each link.

In certain situations, such as NAT, IP Addresses may also be modified.

---

## 4. Configuration / Examples

### 4.1 Checking Network Information on Windows

To view basic network information in Windows:

```
ipconfig
```

To display detailed network information:

```
ipconfig /all
```

Important fields:

- IPv4 Address
    
- Subnet Mask
    
- Default Gateway
    
- DNS Servers
    
- Physical Address
    

### 4.2 Checking Network Information on Linux

To view network interfaces and IP Addresses:

```
ip addr
```

To view the Routing Table:

```
ip route
```

To view MAC Addresses:

```
ip link
```

### 4.3 Testing Layer 3 Connectivity

To test IP connectivity to a destination:

Windows:

```
ping 8.8.8.8
```

Linux:

```
ping -c 4 8.8.8.8
```

If a reply is received, it indicates that ICMP Echo Reply messages have returned from the destination.

However, not receiving a reply does not necessarily mean that connectivity is unavailable. ICMP traffic may be blocked by a firewall.

### 4.4 Testing DNS Resolution

To test DNS functionality:

Windows:

```
nslookup google.com
```

Linux:

```
nslookup google.com
```

Alternatively:

```
dig google.com
```

### 4.5 Checking the Network Route

To inspect the network path:

Windows:

```
tracert 8.8.8.8
```

Linux:

```
traceroute 8.8.8.8
```

These commands help identify the routers along the communication path.

### 4.6 Checking TCP Connections

On Windows:

```
netstat -ano
```

On Linux:

```
ss -tulnp
```

These commands provide information about network connections and listening ports.

### 4.7 Cisco Switch Example - Layer 2

To display the MAC Address Table on Cisco IOS:

```
show mac address-table
```

To display interface status:

```
show interfaces status
```

To display VLAN information:

```
show vlan brief
```

### 4.8 Cisco Router Example - Layer 3

To display IP interface information:

```
show ip interface brief
```

To display the Routing Table:

```
show ip route
```

To display interface details:

```
show interfaces
```

---

## 5. Troubleshooting

The OSI Model is one of the best tools for network troubleshooting.

It helps identify problems by starting at the lower layers and moving upward through the model.

This approach is called **Bottom-Up Troubleshooting**.

### 5.1 Layer 1 - Physical Layer Troubleshooting

Common problems:

- The network cable is disconnected.
    
- The cable is damaged.
    
- The RJ45 connector is faulty.
    
- The Network Interface Card is disabled.
    
- The Switch port is down.
    
- There is a problem with the Fiber Optic connection.
    
- Speed or Duplex settings are incompatible.
    

Commands and checks:

Windows:

```
ipconfig
```

Linux:

```
ip link
```

Cisco:

```
show interfaces status
show interfaces
```

Things to check:

- Link status
    
- Link and Activity LEDs
    
- Cable condition
    
- Speed
    
- Duplex
    
- Interface errors
    

### 5.2 Layer 2 - Data Link Troubleshooting

Common problems:

- Incorrect MAC Address.
    
- Incorrect VLAN configuration.
    
- Switch port is in an unexpected state.
    
- Trunk configuration is incorrect.
    
- STP has placed a port into a blocking state.
    
- MAC Address Learning is not working correctly.
    

Commands:

```
show mac address-table
show vlan brief
show interfaces trunk
show spanning-tree
```

Things to check:

- MAC Address Table
    
- VLAN Membership
    
- Access Ports
    
- Trunk Ports
    
- STP State
    
- Native VLAN
    

### 5.3 Layer 3 - Network Troubleshooting

Common problems:

- Incorrect IP Address.
    
- Incorrect Subnet Mask.
    
- Incorrect Default Gateway.
    
- Routing Table problems.
    
- Missing routes.
    
- IP Address conflicts.
    

Commands:

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

### 5.4 Layer 4 - Transport Troubleshooting

Common problems:

- The TCP port is closed.
    
- The destination service is not running.
    
- A firewall is blocking communication.
    
- A TCP connection cannot be established.
    
- Packet loss or excessive latency occurs.
    

Windows:

```
Test-NetConnection google.com -Port 443
```

Linux:

```
nc -zv example.com 443
```

Things to check:

- TCP Connections
    
- UDP Traffic
    
- Source Port
    
- Destination Port
    
- Firewall Rules
    
- Listening Services
    

### 5.5 Layer 7 - Application Troubleshooting

Common problems:

- DNS resolution fails.
    
- The Web Server is unreachable.
    
- The required service is not running.
    
- Application configuration is incorrect.
    
- Authentication fails.
    

Commands:

```
nslookup google.com
```

```
curl -I https://example.com
```

```
dig example.com
```

### 5.6 OSI Troubleshooting Checklist

|Layer|What to Check|Useful Commands|
|---|---|---|
|L1 - Physical|Cable, Link, Interface|show interfaces|
|L2 - Data Link|MAC, VLAN, STP|show mac address-table|
|L3 - Network|IP, Gateway, Routing|ping, ip route|
|L4 - Transport|TCP, UDP, Ports|netstat, ss, nc|
|L5 - Session|Session State|Application Logs|
|L6 - Presentation|Encryption, Certificates|openssl, curl|
|L7 - Application|DNS, HTTP, Services|nslookup, dig, curl|

Note:

For effective troubleshooting, physical problems should generally be checked first, followed by the higher layers.

However, Bottom-Up is not the only troubleshooting method. Depending on the problem, Top-Down or other approaches may be more appropriate.

---

## 6. Practical Notes

### 6.1 Important Points to Remember

- The OSI Model consists of seven layers.
    
- Layer 1 is responsible for transmitting bits.
    
- Layer 2 uses MAC Addresses.
    
- Layer 3 uses IP Addresses.
    
- Layer 4 uses TCP and UDP.
    
- Layer 7 provides network services to applications.
    
- A traditional Ethernet Switch primarily operates at Layer 2.
    
- A Router primarily operates at Layer 3.
    
- Encapsulation occurs as data moves toward the lower layers.
    
- Decapsulation occurs as data is processed at the destination.
    

### 6.2 OSI vs TCP/IP Model

The TCP/IP Model has a simpler structure than the OSI Model and is more directly associated with real-world Internet communication.

|OSI Model|TCP/IP Model|
|---|---|
|Application|Application|
|Presentation|Application|
|Session|Application|
|Transport|Transport|
|Network|Internet|
|Data Link|Network Access|
|Physical|Network Access|

Main difference:

The OSI Model is a seven-layer reference model, whereas TCP/IP is a networking model based on the protocols used by the Internet.

### 6.3 Common Interview Questions

**Q1: What is the OSI Model?**

The OSI Model is a seven-layer reference model that explains how systems communicate over a network.

**Q2: How many layers does the OSI Model have?**

The OSI Model has seven layers.

**Q3: Which layer uses MAC Addresses?**

Layer 2 - Data Link.

**Q4: Which layer uses IP Addresses?**

Layer 3 - Network.

**Q5: Which layer uses TCP and UDP?**

Layer 4 - Transport.

**Q6: Which layer is responsible for Routing?**

Layer 3 - Network.

**Q7: Which layer is responsible for Switching?**

Layer 2, in traditional Ethernet switching.

**Q8: What is the PDU of Layer 2?**

Frame.

**Q9: What is the PDU of Layer 3?**

Packet.

**Q10: What is the PDU of TCP?**

Segment.

**Q11: What is the PDU of UDP?**

Datagram.

**Q12: What is Encapsulation?**

Encapsulation is the process of adding control information to data as it moves through the lower layers.

**Q13: What is Decapsulation?**

Decapsulation is the process of examining and removing layer-specific control information when data is received.

**Q14: Does a Router change MAC Addresses?**

Under normal conditions, a Router creates a new Ethernet Frame for the next link. Therefore, the source and destination MAC Addresses change at each link.

**Q15: Does a Switch work only at Layer 2?**

No. Layer 3 Switches support Routing in addition to traditional Layer 2 switching functions.

### 6.4 Practical Lab

**Lab 1: Understanding Layer 1**

Objective: Understand the physical status of a network connection.

Steps:

1. Connect two computers to a Switch using Ethernet cables.
    
2. Check the Link LEDs on the network interfaces and Switch.
    
3. Check the interface status.
    

Command:

```
show interfaces status
```

**Lab 2: Understanding Layer 2**

Objective: Observe MAC Address Learning.

Steps:

1. Connect two computers to the same Switch.
    
2. Generate communication between the two computers.
    
3. Examine the Switch MAC Address Table.
    

Command:

```
show mac address-table
```

**Lab 3: Understanding Layer 3**

Objective: Establish IP communication between two computers.

Configuration:

PC1:

```
IP Address: 192.168.1.10
Subnet Mask: 255.255.255.0
```

PC2:

```
IP Address: 192.168.1.20
Subnet Mask: 255.255.255.0
```

Run the following command on PC1:

```
ping 192.168.1.20
```

**Lab 4: Understanding Layer 4**

Objective: Test TCP connectivity to a specific port.

On Windows:

```
Test-NetConnection example.com -Port 443
```

**Lab 5: Understanding Layer 7**

Objective: Test DNS and HTTP/HTTPS functionality.

Commands:

```
nslookup google.com
```

```
curl -I https://google.com
```

### 6.5 Wireshark and the OSI Model

Wireshark is a tool used to capture and analyze network packets.

It allows us to inspect information associated with different OSI layers.

For example:

|OSI Layer|Information in Wireshark|
|---|---|
|Layer 2|Ethernet, MAC Address|
|Layer 3|IPv4, IPv6|
|Layer 4|TCP, UDP|
|Layer 7|HTTP, DNS, DHCP|

Examples:

To filter ICMP traffic:

```
icmp
```

To display DNS traffic:

```
dns
```

To display TCP traffic:

```
tcp
```

To display HTTP traffic:

```
http
```

To display ARP traffic:

```
arp
```

### 6.6 Important Practical Concepts

**Concept 1: MAC Address vs IP Address**

A MAC Address is used for communication at the local link level, while an IP Address provides logical addressing across networks.

**Concept 2: Switch vs Router**

A Switch forwards Frames within a local network based on MAC Addresses.

A Router forwards Packets between different networks based on IP Addresses.

**Concept 3: TCP vs UDP**

TCP provides reliable, connection-oriented communication.

UDP has lower overhead and is suitable for applications where low latency is important.

**Concept 4: OSI Model in Real Networks**

In real-world networks, the OSI layers are not necessarily implemented as seven separate components.

The model is primarily used for conceptual understanding, standardization, education, and troubleshooting.

**Concept 5: Data Changes at Each Layer**

As information moves through the layers, different Headers and Trailers are added.

As a result, the information has a different structure at each layer.

---

## Summary

The OSI Model is one of the most important fundamental concepts in Networking.

Understanding its seven layers provides a better understanding of data transmission, protocol functionality, network devices, and troubleshooting methodologies.

|Layer|Name|PDU|Main Address / Function|
|---|---|---|---|
|7|Application|Data|Network Services|
|6|Presentation|Data|Encryption / Formatting|
|5|Session|Data|Session Management|
|4|Transport|Segment / Datagram|Port Number|
|3|Network|Packet|IP Address|
|2|Data Link|Frame|MAC Address|
|1|Physical|Bits|Physical Transmission|

**Learning Priority:**

To progress toward professional Networking topics, focus especially on these four layers:

1. Layer 1 - Physical
    
2. Layer 2 - Data Link
    
3. Layer 3 - Network
    
4. Layer 4 - Transport
    

This is because many advanced Networking topics, including Switching, Routing, IP Addressing, and Troubleshooting, are built upon these four layers.