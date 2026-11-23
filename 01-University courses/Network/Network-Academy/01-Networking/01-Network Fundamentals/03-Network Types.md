# Network Types

## 1. Introduction

A computer network is a collection of two or more devices connected to each other to exchange information, share resources, and communicate.

Networks are classified into different categories based on geographical coverage, connection methods, architecture, purpose, and technologies.

Understanding network types is essential for designing, implementing, managing, and troubleshooting network infrastructures.

The most common network types include:

- PAN (Personal Area Network)
- LAN (Local Area Network)
- WLAN (Wireless Local Area Network)
- CAN (Campus Area Network)
- MAN (Metropolitan Area Network)
- WAN (Wide Area Network)
- SAN (Storage Area Network)
- VPN (Virtual Private Network)
- VLAN (Virtual Local Area Network)

Each network type is designed for specific requirements and applications.

---

## 2. Concepts

### 2.1. Personal Area Network (PAN)

PAN stands for Personal Area Network.

It is used to connect personal devices within a very short distance.

**Characteristics:**

- Very small geographical coverage
- Designed for connecting personal devices
- Usually low power consumption
- Supports wired and wireless connections

**Technologies used:**

- Bluetooth
- USB
- NFC
- Zigbee

**Examples:**

- Connecting a mobile phone to Bluetooth headphones
- Connecting a smartwatch to a smartphone
- Connecting a laptop to a mobile phone through USB

### 2.2. Local Area Network (LAN)

LAN stands for Local Area Network.

It is used to connect devices within a limited geographical area, such as a home, office, building, or laboratory.

**Characteristics:**

- High data transfer speeds
- Relatively low latency
- Easier management and maintenance
- Usually owned and managed by an individual or organization
- Widely uses Ethernet technology

**Common devices:**

- Switch
- Router
- Network Interface Card (NIC)
- Ethernet Cable
- Access Point

**Examples:**

- A company's internal network
- A school's computer network
- A home network
- A computer laboratory network

### 2.3. Wireless Local Area Network (WLAN)

WLAN stands for Wireless Local Area Network.

It is a type of local area network that connects devices without requiring network cables, usually through radio waves.

The most common technology used in WLANs is Wi-Fi.

**Characteristics:**

- Wireless communication
- Device mobility
- Easier installation compared to fully wired networks
- Requires an Access Point or Wireless Router
- Can be affected by radio interference and physical obstacles

**Important Wi-Fi standards:**

- IEEE 802.11a
- IEEE 802.11b
- IEEE 802.11g
- IEEE 802.11n
- IEEE 802.11ac
- IEEE 802.11ax
- IEEE 802.11be

**Examples:**

- Home Wi-Fi networks
- Corporate wireless networks
- Hotel and airport Wi-Fi networks

### 2.4. Campus Area Network (CAN)

CAN stands for Campus Area Network.

It connects multiple Local Area Networks within a larger geographical area, such as a university, hospital, or corporate campus.

**Characteristics:**

- Covers multiple buildings
- Connects multiple LANs
- Uses high-speed links and fiber-optic cables
- Centralized management
- Can use Core and Distribution network devices

**Examples:**

- A university network
- A hospital network connecting multiple buildings
- A large industrial campus network

### 2.5. Metropolitan Area Network (MAN)

MAN stands for Metropolitan Area Network.

It covers a larger geographical area than a LAN, typically a city or a large part of a metropolitan region.

**Characteristics:**

- Connects LANs across different locations within a city
- Uses high-speed communication links
- Can use fiber-optic infrastructure
- Suitable for connecting organization branches within a city

**Technologies used:**

- Metro Ethernet
- Fiber Optic
- MPLS
- Wireless Links

**Examples:**

- Connecting bank branches across a city
- Municipal communication networks
- Internet Service Provider infrastructure

### 2.6. Wide Area Network (WAN)

WAN stands for Wide Area Network.

It connects different networks over large geographical distances, such as cities, countries, and continents.

**Characteristics:**

- Large geographical coverage
- Connects multiple LANs or MANs
- Uses telecommunications infrastructure
- More complex management and design
- Can use dedicated or public communication links

**Technologies used:**

- MPLS
- Leased Line
- SD-WAN
- IPsec VPN
- Fiber Optic
- Satellite Communication
- 4G / 5G

**Examples:**

- A bank's network connecting branches in multiple countries
- A multinational organization's network
- Communication between different data centers
- The Internet

Note: The Internet is the largest and best-known example of a global wide area network.

### 2.7. Storage Area Network (SAN)

SAN stands for Storage Area Network.

It is a dedicated network used to connect servers to storage systems in enterprise environments and data centers.

**Characteristics:**

- Transfers data between servers and storage devices
- High performance
- Centralized storage access
- Designed for data center environments
- Separates storage traffic from regular network traffic

**Technologies used:**

- Fibre Channel
- iSCSI
- Fibre Channel over Ethernet (FCoE)

**Examples:**

- Connecting virtualization servers to centralized storage
- Data center storage infrastructure
- Enterprise storage systems

### 2.8. Virtual Private Network (VPN)

VPN stands for Virtual Private Network.

It creates a secure logical connection over another network, usually the Internet.

**Characteristics:**

- Provides secure communication between different locations
- Encrypts traffic in many implementations
- Supports remote user connectivity
- Enables secure connections between organizational branches

**Types of VPN:**

- Remote Access VPN
- Site-to-Site VPN
- Client-to-Site VPN
- SSL VPN
- IPsec VPN

**Examples:**

- An employee connecting to the company network from home
- Establishing a secure connection between two company branches
- Allowing network administrators to access devices remotely

Note: A VPN is not an independent physical network type. It is a technology used to create private and logical connections over an existing network infrastructure.

### 2.9. Virtual Local Area Network (VLAN)

VLAN stands for Virtual Local Area Network.

It is a technology used to divide a physical local area network into multiple logically separate networks.

**Characteristics:**

- Logical separation of devices
- Reduces broadcast domain size
- Improves security and access control
- Simplifies network management
- Creates multiple logical networks over the same switching infrastructure

**Example:**

A company can divide its network into the following VLANs:

| VLAN ID | VLAN Name | Purpose |
|---|---|---|
| 10 | Management | Network device management |
| 20 | HR | Human Resources department |
| 30 | Finance | Finance department |
| 40 | IT | Information Technology department |
| 50 | Guest | Guest users |

Note: VLAN is a logical segmentation technology for LANs, not a separate network category based on geographical coverage.

### 2.10. Comparison of Network Types

| Network Type | Coverage Area | Main Purpose |
|---|---|---|
| PAN | A few meters | Connecting personal devices |
| LAN | Home or building | Internal networking |
| WLAN | Home or building | Wireless local networking |
| CAN | Multiple buildings | University or campus networking |
| MAN | City | Connecting networks across a metropolitan area |
| WAN | Countries and continents | Connecting geographically distant networks |
| SAN | Data center environment | Storage data communication |
| VPN | Depends on the underlying network | Private and secure communication |
| VLAN | Local network | Logical network segmentation |

---

## 3. How It Works

### 3.1. How LAN Works

In a LAN, devices are usually connected to a Switch through Ethernet cables.

Communication process:

1. A computer generates a Frame.
2. The Frame is sent to the Switch through the Network Interface Card.
3. The Switch checks the destination MAC address.
4. The Switch forwards the Frame to the appropriate port.
5. The destination device receives the Frame.

If the destination belongs to another network, the device usually sends the traffic to its Default Gateway so that the Router can forward the packet to the destination network.

### 3.2. How WLAN Works

In a WLAN, devices connect to an Access Point through radio waves.

Communication process:

1. The device scans for available wireless networks.
2. The user selects the desired SSID.
3. Authentication takes place.
4. An encrypted connection is established when required.
5. The device receives IP configuration through DHCP.
6. The device can communicate with other network resources.

### 3.3. How WAN Works

In a WAN, multiple local networks are connected through a service provider's infrastructure or dedicated communication links.

Communication process:

1. Data leaves the source local network.
2. The Router forwards the packet toward the WAN.
3. The packet travels through the communication link toward the destination network.
4. Intermediate routers select appropriate paths.
5. The packet reaches the destination Router.
6. The destination Router forwards the packet to the local network.

Protocols and technologies such as BGP, OSPF, MPLS, and SD-WAN can be used to design and manage wide area networks.

### 3.4. How VPN Works

A VPN creates a logical tunnel between two endpoints.

For example, in a Site-to-Site IPsec VPN:

1. Two Routers or Firewalls are installed at two different branch locations.
2. Both devices communicate through the Internet.
3. Security and encryption parameters are negotiated.
4. A VPN tunnel is established.
5. Data is encrypted and transmitted through the tunnel.
6. The destination device receives and processes the data.

### 3.5. How VLAN Works

VLANs are created through Switch configuration.

For example:

- Computers in the Finance department belong to VLAN 30.
- Computers in the IT department belong to VLAN 40.
- Guest users belong to VLAN 50.

Each VLAN creates a separate Broadcast Domain.

Communication between VLANs requires a Layer 3 device, such as a Router or Layer 3 Switch.

For Trunk communication, frames are usually tagged using the IEEE 802.1Q standard to identify the VLAN associated with each frame.

---

## 4. Configuration / Examples

### 4.1. VLAN Configuration on a Cisco Switch

Creating VLANs:

```cisco
enable
configure terminal

vlan 10
name MANAGEMENT

vlan 20
name HR

vlan 30
name FINANCE

exit
```

Assigning ports to VLANs:

```cisco
interface fastEthernet 0/1
switchport mode access
switchport access vlan 10
exit

interface fastEthernet 0/2
switchport mode access
switchport access vlan 20
exit

interface fastEthernet 0/3
switchport mode access
switchport access vlan 30
exit
```

Verifying VLANs:

```cisco
show vlan brief
```

### 4.2. Trunk Configuration

To carry traffic from multiple VLANs between two switches:

```cisco
configure terminal

interface gigabitEthernet 0/1
switchport mode trunk
switchport trunk allowed vlan 10,20,30
exit
```

Verifying Trunk status:

```cisco
show interfaces trunk
```

Note: Some switch models require different configuration options for encapsulation. Switches that support only 802.1Q do not require a separate encapsulation command.

### 4.3. Inter-VLAN Routing Configuration

Router-on-a-Stick can be used to enable communication between different VLANs.

Example Router configuration:

```cisco
enable
configure terminal

interface gigabitEthernet 0/0
no shutdown
exit

interface gigabitEthernet 0/0.10
encapsulation dot1Q 10
ip address 192.168.10.1 255.255.255.0
exit

interface gigabitEthernet 0/0.20
encapsulation dot1Q 20
ip address 192.168.20.1 255.255.255.0
exit

interface gigabitEthernet 0/0.30
encapsulation dot1Q 30
ip address 192.168.30.1 255.255.255.0
exit
```

In this example:

- VLAN 10 uses 192.168.10.1 as its Gateway.
- VLAN 20 uses 192.168.20.1 as its Gateway.
- VLAN 30 uses 192.168.30.1 as its Gateway.

The switch port connected to the Router must be configured as a Trunk port.

### 4.4. DHCP Configuration for a LAN

Example DHCP configuration on a Cisco Router:

```cisco
configure terminal

ip dhcp excluded-address 192.168.10.1 192.168.10.20

ip dhcp pool LAN10
network 192.168.10.0 255.255.255.0
default-router 192.168.10.1
dns-server 8.8.8.8
exit
```

This configuration assigns IP addresses to clients in the 192.168.10.0/24 network.

### 4.5. Checking Network Configuration in Windows

Display IP configuration:

```cmd
ipconfig /all
```

Test connectivity to the Gateway:

```cmd
ping 192.168.1.1
```

Check the network path:

```cmd
tracert 8.8.8.8
```

Display the routing table:

```cmd
route print
```

### 4.6. Checking Network Configuration in Linux

Display IP addresses:

```bash
ip addr
```

Display routing information:

```bash
ip route
```

Display network interface status:

```bash
ip link
```

Test connectivity:

```bash
ping 8.8.8.8
```

### 4.7. Example: Designing a Company's Network

Assume a company has three different departments:

| Department | VLAN | Network | Gateway |
|---|---|---|---|
| Management | 10 | 192.168.10.0/24 | 192.168.10.1 |
| Finance | 20 | 192.168.20.0/24 | 192.168.20.1 |
| IT | 30 | 192.168.30.0/24 | 192.168.30.1 |

**Required equipment:**

- One Router or Layer 3 Switch
- One or more Access Switches
- Ethernet cables
- User computers
- Access Points, if wireless connectivity is required

In this design, users in each department are placed in separate VLANs. Communication between VLANs is controlled through Layer 3 routing.

---

## 5. Troubleshooting

Network troubleshooting should be performed step by step, based on the network type and communication layers.

### 5.1. Common LAN Problems

**Common issues:**

- Disconnected network cables
- Powered-off Switch
- Disabled network port
- Incorrect IP configuration
- Incorrect Subnet Mask
- Incorrect Default Gateway

**Verification commands:**

```cisco
show interfaces status
```

```cisco
show interfaces
```

```cmd
ipconfig /all
```

```cmd
ping 192.168.1.1
```

**Solutions:**

- Check network cables and physical connections.
- Check Switch port status.
- Verify IP configuration.
- Check the VLAN assigned to the port.
- Verify the Default Gateway.

### 5.2. Common WLAN Problems

**Common issues:**

- SSID is not visible.
- Unable to connect to Wi-Fi.
- Device does not receive an IP address.
- Weak wireless signal.
- Radio frequency interference.
- Incorrect wireless password.

**Solutions:**

- Check whether the Access Point is powered on.
- Verify SSID and wireless security settings.
- Check DHCP configuration.
- Check signal strength.
- Review Wi-Fi channel configuration.
- Check the number of connected users.

### 5.3. Common VLAN Problems

**Common issues:**

- Port assigned to the wrong VLAN.
- Incorrect Trunk configuration.
- VLAN blocked by the Allowed VLAN List.
- Incorrect Native VLAN.
- Missing Inter-VLAN Routing configuration.

**Verification commands:**

```cisco
show vlan brief
```

```cisco
show interfaces trunk
```

```cisco
show interfaces switchport
```

```cisco
show ip interface brief
```

**Solutions:**

- Verify the VLAN assigned to each port.
- Check Trunk status.
- Verify the Allowed VLAN List.
- Check the Gateway of each VLAN.
- Verify Router or Layer 3 Switch configuration.

### 5.4. Common WAN Problems

**Common issues:**

- Lost connectivity between branches.
- WAN link failure.
- Routing problems.
- Incorrect IP configuration.
- ISP connectivity problems.
- VPN tunnel failure.

**Verification commands:**

```cisco
show ip interface brief
```

```cisco
show ip route
```

```cisco
ping 8.8.8.8
```

```cisco
traceroute 8.8.8.8
```

**Solutions:**

- Check WAN link status.
- Verify Router configuration.
- Check the Routing Table.
- Test connectivity to the ISP.
- Verify routing protocols.
- Check NAT and Firewall configuration.

### 5.5. Common VPN Problems

**Common issues:**

- VPN tunnel cannot be established.
- Connection drops after some time.
- Incorrect Pre-Shared Key.
- Encryption settings do not match.
- Routing problems.
- Required ports or protocols are blocked.

**Solutions:**

- Verify VPN configuration on both endpoints.
- Check security keys.
- Verify encryption algorithms.
- Check IPsec and IKE connectivity.
- Verify routing configuration.
- Review Firewall rules.

### 5.6. Common SAN Problems

**Common issues:**

- Storage is not detected by the server.
- iSCSI connectivity failure.
- Fibre Channel problems.
- Incorrect Zoning configuration.
- LUN access problems.

**Solutions:**

- Check cables and physical links.
- Verify SAN Switch status.
- Review Zoning configuration.
- Check Target and Initiator status.
- Verify LUN Masking configuration.
- Check Multipathing configuration.

### 5.7. General Network Troubleshooting Method

The following steps can be used to troubleshoot different types of networks:

1. Check physical connections and cables.
2. Verify network interface status.
3. Check IP address and Subnet Mask.
4. Verify the Default Gateway.
5. Check VLAN and Switching configuration.
6. Verify Routing configuration.
7. Check DNS.
8. Review Firewall and ACL rules.
9. Test connectivity to the destination.
10. Analyze traffic using Wireshark.

---

## 6. Practical Notes

### 6.1. Difference Between LAN and WAN

| Feature | LAN | WAN |
|---|---|---|
| Geographical coverage | Limited | Large |
| Speed | Usually high | Depends on service and infrastructure |
| Latency | Usually low | Usually higher |
| Management | Often managed by an organization | May be shared with an ISP |
| Cost | Usually lower | Usually higher |
| Purpose | Internal networking | Connecting geographically distant networks |

### 6.2. Difference Between LAN and WLAN

| Feature | LAN | WLAN |
|---|---|---|
| Connection type | Usually wired | Wireless |
| Technology | Ethernet | Wi-Fi |
| Security | Depends on physical and logical access controls | Depends on wireless encryption and authentication |
| Mobility | More limited | Greater |
| Interference | Less affected by radio interference | Affected by radio frequency interference |
| Main equipment | Switch | Access Point |

### 6.3. Difference Between Switch and Router

**Switch:**

- Usually operates at Layer 2 of the OSI Model.
- Uses MAC addresses to forward Frames.
- Connects devices within a local network.
- Supports VLAN configuration.

**Router:**

- Operates at Layer 3 of the OSI Model.
- Uses IP addresses for routing.
- Connects different networks.
- Can provide communication between LAN and WAN networks.

### 6.4. Important Notes for Network Engineers

- Using VLANs in enterprise network design helps separate different departments.
- WAN technologies are used to connect local networks over long distances.
- Site-to-Site VPN can provide secure communication between branches.
- WLAN is used to connect wireless users to a network.
- In data centers, SAN provides centralized access to storage resources.
- Network design should consider scalability, security, redundancy, and performance.
- Accurate network documentation simplifies troubleshooting and maintenance.
- Equipment selection should be based on the number of users, traffic volume, and organizational requirements.

### 6.5. Interview Questions

**Question 1: What is a computer network?**

A collection of connected devices that exchange information and share resources.

**Question 2: What is the difference between LAN and WAN?**

A LAN covers a smaller geographical area, while a WAN connects networks over large geographical distances.

**Question 3: What is WLAN?**

A wireless local area network that typically uses Wi-Fi technology.

**Question 4: What is PAN?**

A network with a very small coverage area used to connect personal devices, such as smartphones and Bluetooth headphones.

**Question 5: What is VLAN?**

A technology used to divide a physical local area network into multiple logically separate networks.

**Question 6: Does VLAN reduce broadcast traffic?**

Yes. Each VLAN creates a separate Broadcast Domain.

**Question 7: What is the difference between an Access Port and a Trunk Port?**

An Access Port is generally used to connect end devices to a single VLAN, while a Trunk Port can carry traffic from multiple VLANs.

**Question 8: What is VPN?**

A technology that creates a private and usually encrypted connection over another network.

**Question 9: What is SAN?**

A dedicated network used to connect servers to storage systems.

**Question 10: What is Inter-VLAN Routing?**

The process of routing traffic between different VLANs using a Router or Layer 3 Switch.

### 6.6. Practical Labs

The following labs are recommended to improve your understanding of network types.

**Lab 1: LAN Network Design**

- Connect multiple computers to a Switch.
- Assign IP addresses to computers.
- Test connectivity using the Ping command.
- Examine the MAC Address Table.

**Lab 2: WLAN Configuration**

- Configure an Access Point.
- Set an SSID.
- Enable WPA2 or WPA3 security.
- Connect a laptop and smartphone.
- Verify IP address assignment through DHCP.

**Lab 3: VLAN Configuration**

- Create three VLANs.
- Assign Switch ports to the VLANs.
- Test connectivity between devices in each VLAN.
- Examine Broadcast Domains.

**Lab 4: Inter-VLAN Routing Configuration**

- Create multiple VLANs.
- Configure Router-on-a-Stick.
- Set the Gateway for each VLAN.
- Test communication between VLANs.

**Lab 5: WAN Design**

- Connect two local networks using two Routers.
- Configure IP addresses on interfaces.
- Configure Static Routing.
- Test connectivity between the networks.

**Lab 6: Site-to-Site VPN Configuration**

- Create two networks at different locations.
- Configure IPsec VPN.
- Establish a tunnel between two Routers.
- Test secure communication between the networks.

**Lab 7: Network Testing and Troubleshooting**

- Create a VLAN configuration problem.
- Introduce an incorrect Default Gateway.
- Simulate a WAN connectivity failure.
- Analyze traffic using Wireshark.
- Identify and resolve the problems.

---

## Summary

Computer networks are classified into different categories based on geographical coverage, connection methods, and applications.

The most important network types include:

1. **PAN:** A personal network used to connect nearby personal devices.
2. **LAN:** A local network used to connect devices within a home or building.
3. **WLAN:** A wireless local area network based on Wi-Fi technology.
4. **CAN:** A network that connects multiple buildings within a campus.
5. **MAN:** A network used for communication across a metropolitan area.
6. **WAN:** A wide area network used to connect networks over large distances.
7. **SAN:** A dedicated network used to connect servers to storage systems.
8. **VPN:** A technology used to create private and secure connections over an existing network infrastructure.
9. **VLAN:** A technology used for logical segmentation of a local area network.

Understanding these network types is essential for designing infrastructure, selecting network equipment, managing communication, and troubleshooting home, enterprise, and data center networks.

