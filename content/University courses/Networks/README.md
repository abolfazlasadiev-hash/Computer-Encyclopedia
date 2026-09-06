# Computer Networks

Auto-generated notes structure.

Folders and files are numbered to preserve the outline order.



```
COMPUTER NETWORKS
│
├── 1. INTRODUCTION TO COMPUTER NETWORKS
│   │
│   ├── 1.1 Basic Concepts
│   │   ├── Data Communication
│   │   ├── Computer Network
│   │   ├── Distributed Systems
│   │   ├── Network Architecture
│   │   ├── Network Criteria
│   │   │   ├── Performance
│   │   │   ├── Reliability
│   │   │   └── Security
│   │   └── Network Applications
│   │
│   ├── 1.2 Network Types
│   │   ├── PAN
│   │   ├── LAN
│   │   ├── MAN
│   │   ├── WAN
│   │   ├── WLAN
│   │   └── Internet
│   │
│   ├── 1.3 Network Topologies
│   │   ├── Bus
│   │   ├── Star
│   │   ├── Ring
│   │   ├── Mesh
│   │   ├── Tree
│   │   └── Hybrid
│   │
│   ├── 1.4 Network Components
│   │   ├── Host
│   │   ├── Client
│   │   ├── Server
│   │   ├── Peer
│   │   └── Network Devices
│   │       ├── Repeater
│   │       ├── Hub
│   │       ├── Bridge
│   │       ├── Switch
│   │       ├── Router
│   │       ├── Gateway
│   │       ├── Modem
│   │       └── Access Point
│   │
│   ├── 1.5 Network Performance
│   │   ├── Bandwidth
│   │   ├── Throughput
│   │   ├── Goodput
│   │   ├── Latency
│   │   ├── Delay
│   │   ├── Jitter
│   │   └── Packet Loss
│   │
│   └── 1.6 Network Standards
│       ├── ISO
│       ├── IEEE
│       ├── IETF
│       └── RFCs
│
├── 2. NETWORK MODELS
│   │
│   ├── 2.1 Protocols
│   │   ├── Protocol Definition
│   │   ├── Protocol Elements
│   │   │   ├── Syntax
│   │   │   ├── Semantics
│   │   │   └── Timing
│   │   └── Protocol Standards
│   │
│   ├── 2.2 Layered Architecture
│   │   ├── Advantages
│   │   ├── Encapsulation
│   │   ├── Decapsulation
│   │   └── Peer-to-Peer Communication
│   │
│   ├── 2.3 OSI MODEL
│   │   ├── 7. Application Layer
│   │   ├── 6. Presentation Layer
│   │   ├── 5. Session Layer
│   │   ├── 4. Transport Layer
│   │   ├── 3. Network Layer
│   │   ├── 2. Data Link Layer
│   │   └── 1. Physical Layer
│   │
│   ├── 2.4 TCP/IP MODEL
│   │   ├── Application Layer
│   │   ├── Transport Layer
│   │   ├── Internet Layer
│   │   └── Network Access Layer
│   │
│   ├── 2.5 OSI vs TCP/IP
│   │
│   └── 2.6 Addressing
│       ├── Physical Address
│       ├── Logical Address
│       ├── Port Address
│       └── Application-Specific Address
│
├── 3. PHYSICAL LAYER
│   │
│   ├── 3.1 Data & Signals
│   │   ├── Data
│   │   │   ├── Analog
│   │   │   └── Digital
│   │   └── Signals
│   │       ├── Analog Signal
│   │       └── Digital Signal
│   │
│   ├── 3.2 Periodic Signals
│   │   ├── Amplitude
│   │   ├── Frequency
│   │   ├── Period
│   │   ├── Phase
│   │   └── Wavelength
│   │
│   ├── 3.3 Digital Transmission
│   │   ├── Line Coding
│   │   │   ├── Unipolar
│   │   │   ├── Polar
│   │   │   ├── Bipolar
│   │   │   ├── NRZ
│   │   │   ├── RZ
│   │   │   ├── Manchester
│   │   │   └── Differential Manchester
│   │   └── Block Coding
│   │
│   ├── 3.4 Analog Transmission
│   │   ├── ASK
│   │   ├── FSK
│   │   ├── PSK
│   │   ├── QAM
│   │   └── Modulation
│   │
│   ├── 3.5 Digital-to-Analog Conversion
│   │
│   ├── 3.6 Analog-to-Digital Conversion
│   │   ├── PCM
│   │   ├── Sampling
│   │   ├── Quantization
│   │   └── Encoding
│   │
│   ├── 3.7 Transmission Impairments
│   │   ├── Attenuation
│   │   ├── Distortion
│   │   └── Noise
│   │
│   ├── 3.8 Data Rate Limits
│   │   ├── Nyquist Bit Rate
│   │   └── Shannon Capacity
│   │
│   ├── 3.9 Transmission Media
│   │   ├── Guided Media
│   │   │   ├── Twisted Pair
│   │   │   ├── Coaxial Cable
│   │   │   └── Fiber Optic
│   │   └── Unguided Media
│   │       ├── Radio Waves
│   │       ├── Microwaves
│   │       ├── Infrared
│   │       └── Satellite
│   │
│   └── 3.10 Multiplexing
│       ├── FDM
│       ├── TDM
│       ├── WDM
│       └── Statistical TDM
│
├── 4. DATA LINK LAYER
│   │
│   ├── 4.1 Data Link Layer Functions
│   │   ├── Framing
│   │   ├── Physical Addressing
│   │   ├── Flow Control
│   │   ├── Error Control
│   │   └── Access Control
│   │
│   ├── 4.2 Framing
│   │   ├── Character Count
│   │   ├── Byte Stuffing
│   │   ├── Bit Stuffing
│   │   └── Flag Bytes
│   │
│   ├── 4.3 Error Detection
│   │   ├── Parity Check
│   │   ├── Two-Dimensional Parity
│   │   ├── Checksum
│   │   └── CRC
│   │
│   ├── 4.4 Error Correction
│   │   ├── Hamming Code
│   │   ├── Forward Error Correction
│   │   └── Retransmission
│   │
│   ├── 4.5 Flow Control
│   │   ├── Stop-and-Wait
│   │   └── Sliding Window
│   │
│   ├── 4.6 ARQ
│   │   ├── Stop-and-Wait ARQ
│   │   ├── Go-Back-N ARQ
│   │   └── Selective Repeat ARQ
│   │
│   ├── 4.7 Data Link Protocols
│   │   ├── HDLC
│   │   └── PPP
│   │
│   ├── 4.8 MAC SUBLAYER
│   │   ├── Random Access
│   │   │   ├── Pure ALOHA
│   │   │   ├── Slotted ALOHA
│   │   │   ├── CSMA
│   │   │   ├── CSMA/CD
│   │   │   └── CSMA/CA
│   │   ├── Controlled Access
│   │   │   ├── Reservation
│   │   │   ├── Polling
│   │   │   └── Token Passing
│   │   └── Channelization
│   │       ├── FDMA
│   │       ├── TDMA
│   │       └── CDMA
│   │
│   ├── 4.9 Ethernet
│   │   ├── Ethernet Frame
│   │   ├── MAC Address
│   │   ├── Ethernet Standards
│   │   ├── Fast Ethernet
│   │   ├── Gigabit Ethernet
│   │   └── 10-Gigabit Ethernet
│   │
│   └── 4.10 VLAN
│       ├── VLAN Concept
│       ├── VLAN Types
│       ├── VLAN Tagging
│       └── Trunking
│
├── 5. NETWORK LAYER
│   │
│   ├── 5.1 Network Layer Functions
│   │   ├── Logical Addressing
│   │   ├── Routing
│   │   ├── Forwarding
│   │   ├── Internetworking
│   │   └── Congestion Control
│   │
│   ├── 5.2 Switching
│   │   ├── Circuit Switching
│   │   ├── Packet Switching
│   │   │   ├── Datagram
│   │   │   └── Virtual Circuit
│   │   └── Message Switching
│   │
│   ├── 5.3 IPv4
│   │   ├── IPv4 Address
│   │   ├── IPv4 Header
│   │   ├── Fragmentation
│   │   └── MTU
│   │
│   ├── 5.4 IPv4 Addressing
│   │   ├── Binary Representation
│   │   ├── Classful Addressing
│   │   │   ├── Class A
│   │   │   ├── Class B
│   │   │   ├── Class C
│   │   │   ├── Class D
│   │   │   └── Class E
│   │   ├── Public Address
│   │   ├── Private Address
│   │   ├── Loopback
│   │   └── Special Addresses
│   │
│   ├── 5.5 Subnetting
│   │   ├── Subnet Mask
│   │   ├── Network ID
│   │   ├── Host ID
│   │   ├── Number of Subnets
│   │   ├── Number of Hosts
│   │   ├── VLSM
│   │   └── CIDR
│   │
│   ├── 5.6 IPv6
│   │   ├── IPv6 Address
│   │   ├── IPv6 Header
│   │   ├── Address Types
│   │   │   ├── Unicast
│   │   │   ├── Multicast
│   │   │   └── Anycast
│   │   ├── IPv6 Features
│   │   └── IPv4 vs IPv6
│   │
│   ├── 5.7 Supporting Protocols
│   │   ├── ARP
│   │   ├── RARP
│   │   ├── ICMP
│   │   ├── ICMPv6
│   │   └── DHCP
│   │
│   ├── 5.8 NAT
│   │   ├── Static NAT
│   │   ├── Dynamic NAT
│   │   └── PAT
│   │
│   ├── 5.9 Routing
│   │   ├── Routing Table
│   │   ├── Static Routing
│   │   └── Dynamic Routing
│   │
│   ├── 5.10 Routing Algorithms
│   │   ├── Shortest Path
│   │   ├── Dijkstra Algorithm
│   │   ├── Bellman-Ford
│   │   ├── Distance Vector
│   │   ├── Link State
│   │   └── Path Vector
│   │
│   ├── 5.11 Routing Protocols
│   │   ├── RIP
│   │   ├── OSPF
│   │   ├── IS-IS
│   │   ├── EIGRP
│   │   └── BGP
│   │
│   └── 5.12 Congestion
│       ├── Causes
│       ├── Effects
│       ├── Congestion Control
│       ├── Traffic Shaping
│       │   ├── Leaky Bucket
│       │   └── Token Bucket
│       └── QoS
│
├── 6. TRANSPORT LAYER
│   │
│   ├── 6.1 Transport Layer Services
│   │   ├── Process-to-Process Delivery
│   │   ├── Port Addressing
│   │   ├── Segmentation
│   │   ├── Reassembly
│   │   ├── Connection Control
│   │   ├── Flow Control
│   │   └── Error Control
│   │
│   ├── 6.2 Ports
│   │   ├── Well-Known Ports
│   │   ├── Registered Ports
│   │   └── Dynamic Ports
│   │
│   ├── 6.3 UDP
│   │   ├── UDP Header
│   │   ├── Characteristics
│   │   ├── Advantages
│   │   └── Applications
│   │
│   ├── 6.4 TCP
│   │   ├── TCP Header
│   │   ├── Connection-Oriented Communication
│   │   ├── Sequence Numbers
│   │   ├── Acknowledgements
│   │   ├── Retransmission
│   │   ├── Sliding Window
│   │   ├── Flow Control
│   │   └── Error Control
│   │
│   ├── 6.5 TCP Connection
│   │   ├── 3-Way Handshake
│   │   ├── Data Transfer
│   │   └── 4-Way Termination
│   │
│   ├── 6.6 TCP Reliability
│   │   ├── ACK
│   │   ├── Timeout
│   │   ├── Retransmission
│   │   └── Duplicate ACK
│   │
│   ├── 6.7 TCP Congestion Control
│   │   ├── Slow Start
│   │   ├── Congestion Avoidance
│   │   ├── Fast Retransmit
│   │   └── Fast Recovery
│   │
│   └── 6.8 TCP vs UDP
│
├── 7. APPLICATION LAYER
│   │
│   ├── 7.1 DNS
│   │   ├── Domain Names
│   │   ├── DNS Hierarchy
│   │   ├── DNS Resolution
│   │   ├── DNS Records
│   │   ├── Recursive Query
│   │   └── Iterative Query
│   │
│   ├── 7.2 HTTP
│   │   ├── HTTP Request
│   │   ├── HTTP Response
│   │   ├── HTTP Methods
│   │   │   ├── GET
│   │   │   ├── POST
│   │   │   ├── PUT
│   │   │   ├── DELETE
│   │   │   └── PATCH
│   │   ├── Status Codes
│   │   ├── HTTP/1.1
│   │   ├── HTTP/2
│   │   └── HTTP/3
│   │
│   ├── 7.3 HTTPS
│   │   ├── TLS
│   │   ├── Certificates
│   │   └── Secure Communication
│   │
│   ├── 7.4 File Transfer
│   │   ├── FTP
│   │   ├── SFTP
│   │   └── TFTP
│   │
│   ├── 7.5 Email
│   │   ├── SMTP
│   │   ├── POP3
│   │   ├── IMAP
│   │   └── MIME
│   │
│   ├── 7.6 Remote Access
│   │   ├── Telnet
│   │   └── SSH
│   │
│   └── 7.7 Network Management
│       ├── SNMP
│       └── Network Monitoring
│
├── 8. WIRELESS & MOBILE NETWORKS
│   │
│   ├── 8.1 Wireless Fundamentals
│   │   ├── Wireless Transmission
│   │   ├── Radio Spectrum
│   │   └── Wireless Challenges
│   │
│   ├── 8.2 Wi-Fi
│   │   ├── IEEE 802.11
│   │   ├── Wi-Fi Architecture
│   │   ├── Access Point
│   │   ├── SSID
│   │   ├── CSMA/CA
│   │   └── Wi-Fi Security
│   │
│   ├── 8.3 Bluetooth
│   ├── 8.4 Cellular Networks
│   │   ├── 2G
│   │   ├── 3G
│   │   ├── 4G
│   │   └── 5G
│   │
│   └── 8.5 Mobile IP
│
├── 9. NETWORK SECURITY
│   │
│   ├── 9.1 Security Fundamentals
│   │   ├── Confidentiality
│   │   ├── Integrity
│   │   ├── Availability
│   │   ├── Authentication
│   │   └── Non-Repudiation
│   │
│   ├── 9.2 Cryptography
│   │   ├── Plaintext
│   │   ├── Ciphertext
│   │   ├── Encryption
│   │   └── Decryption
│   │
│   ├── 9.3 Symmetric Cryptography
│   │   ├── AES
│   │   └── Block Ciphers
│   │
│   ├── 9.4 Asymmetric Cryptography
│   │   ├── RSA
│   │   ├── Diffie-Hellman
│   │   └── Public/Private Keys
│   │
│   ├── 9.5 Hashing
│   │   ├── Hash Functions
│   │   ├── SHA
│   │   └── Password Hashing
│   │
│   ├── 9.6 Digital Signatures
│   ├── 9.7 Digital Certificates
│   ├── 9.8 PKI
│   ├── 9.9 TLS/SSL
│   ├── 9.10 Firewalls
│   ├── 9.11 VPN
│   └── 9.12 Network Attacks
│       ├── DoS
│       ├── DDoS
│       ├── Spoofing
│       ├── Sniffing
│       ├── Man-in-the-Middle
│       ├── Session Hijacking
│       ├── DNS Attacks
│       └── Phishing
│
├── 10. NETWORK MANAGEMENT & TROUBLESHOOTING
│   │
│   ├── Network Monitoring
│   ├── Fault Management
│   ├── Performance Management
│   ├── Configuration Management
│   ├── Security Management
│   ├── Troubleshooting Methodology
│   └── Network Tools
│       ├── ping
│       ├── traceroute / tracert
│       ├── ipconfig / ifconfig
│       ├── nslookup
│       ├── dig
│       ├── arp
│       ├── netstat
│       └── tcpdump / Wireshark
│
├── 11. ADVANCED NETWORKING
│   │
│   ├── Quality of Service (QoS)
│   ├── Network Virtualization
│   ├── Software Defined Networking (SDN)
│   ├── Network Function Virtualization (NFV)
│   ├── Cloud Networking
│   ├── Data Center Networks
│   ├── Content Delivery Networks (CDN)
│   ├── Internet of Things (IoT)
│   └── Network Automation
│
└── 12. PRACTICAL / LAB SKILLS
    │
    ├── IP Address Configuration
    ├── Subnetting Practice
    ├── Switch Configuration
    ├── Router Configuration
    ├── VLAN Configuration
    ├── Static Routing
    ├── Dynamic Routing
    ├── DHCP Configuration
    ├── NAT Configuration
    ├── DNS Configuration
    ├── Packet Capture
    │   └── Wireshark
    ├── Network Simulation
    │   ├── Cisco Packet Tracer
    │   └── GNS3
    ├── Troubleshooting
    └── Network Design
```

