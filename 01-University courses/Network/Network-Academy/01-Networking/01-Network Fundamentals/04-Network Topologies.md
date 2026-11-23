# **Network Topologies**

## **1. Introduction**

**Network Topology** refers to the physical or logical arrangement of devices in a computer network.

In simple terms, network topology describes how devices such as computers, servers, switches, and routers are connected to each other and how data travels between them.

For example, imagine a company with 10 computers. The way these computers are connected defines the network topology.

Choosing the right network topology affects several factors:

- Data transmission speed
    
- Network installation cost
    
- Network reliability and availability
    
- Network security and management
    
- Troubleshooting and maintenance
    
- Scalability and future expansion
    

There are two main categories of network topology:

### **A. Physical Topology**

Physical topology describes how network devices and cables are physically connected.

It focuses on the actual hardware connections and network layout.

### **B. Logical Topology**

Logical topology describes how data moves between devices within a network.

It focuses on the communication paths and how information is transmitted, regardless of the physical layout.

**Important:** Physical topology and logical topology are not always the same.

## **2. Concepts**

There are several common types of network topologies.

### **2.1 Bus Topology**

In a Bus Topology, all devices are connected to a single main cable called the **Backbone Cable**.

**How it works:**

- Data is transmitted through the main cable.
    
- All connected devices receive the transmitted signal.
    
- Only the device with the matching destination address processes the data.
    

**Advantages:**

- Low installation cost.
    
- Simple setup for small networks.
    
- Requires less cabling compared to some other topologies.
    

**Disadvantages:**

- Failure of the main cable can bring down the entire network.
    
- Troubleshooting can be difficult.
    
- Network performance decreases as more devices are added.
    
- Data collisions can occur in traditional shared Ethernet implementations.
    

### **2.2 Star Topology**

In a Star Topology, all devices are connected to a central device, usually a **Network Switch**.

**How it works:**

When Computer A wants to send data to Computer B, the data first reaches the central switch. The switch then forwards the data to the destination device.

**Advantages:**

- Easy network management.
    
- Simple troubleshooting.
    
- Failure of one cable usually affects only one device.
    
- Easy to expand the network.
    
- Good performance with modern Ethernet switches.
    

**Disadvantages:**

- Failure of the central switch can affect the entire network.
    
- Requires more cabling than Bus Topology.
    
- Installation costs may be higher.
    

**Practical Note:** Star Topology is one of the most commonly used topologies in modern LAN networks.

### **2.3 Ring Topology**

In a Ring Topology, devices are connected in a circular structure, where each device connects to its neighboring devices.

**How it works:**

Data travels from one device to the next until it reaches its destination.

Some ring networks use a mechanism called **Token Passing** to control which device can transmit data.

**Advantages:**

- Organized data transmission.
    
- Token-based implementations can avoid collisions.
    
- Predictable access to the network in certain implementations.
    

**Disadvantages:**

- A single link or device failure can disrupt a basic ring.
    
- Expansion and troubleshooting can be complicated.
    
- Maintenance may require specialized configurations.
    

### **2.4 Mesh Topology**

In a Mesh Topology, devices are connected through multiple communication links.

There are two main types:

**Full Mesh:**

Every device has a direct connection to every other device.

**Partial Mesh:**

Only some devices have multiple direct connections to other devices.

**Advantages:**

- High reliability.
    
- Multiple alternative communication paths.
    
- Better fault tolerance.
    
- Network communication can continue through alternative paths if a link fails.
    

**Disadvantages:**

- High installation cost.
    
- Requires more cables and network interfaces.
    
- Complex configuration and management.
    
- Full Mesh becomes expensive as the number of devices increases.
    

### **2.5 Tree Topology**

Tree Topology is a hierarchical network structure that combines multiple Star Topologies.

For example:

- A central switch acts as the main network device.
    
- Other switches connect to the central switch.
    
- Computers and other devices connect to the lower-level switches.
    

**Advantages:**

- Suitable for large networks.
    
- Easy to expand.
    
- Supports hierarchical network management.
    
- Makes it easier to organize different departments or network segments.
    

**Disadvantages:**

- Failure of a central device can affect multiple network segments.
    
- Requires careful planning.
    
- Configuration and management can become complex.
    

### **2.6 Hybrid Topology**

Hybrid Topology is a combination of two or more different network topologies.

For example, a company may use:

- Star Topology within each office floor.
    
- Tree Topology to connect switches across different floors.
    
- Redundant Mesh connections between buildings.
    

**Advantages:**

- Flexible network design.
    
- Suitable for large organizations.
    
- Highly scalable.
    
- Can provide better reliability through redundancy.
    

**Disadvantages:**

- Complex network design.
    
- Higher implementation and maintenance costs.
    
- Requires advanced network planning and management.
    

## **3. How It Works**

To understand how network topology works, consider a simple Star Topology network.

Imagine two computers connected to the same network switch.

Network configuration:

|Device|IP Address|
|---|---|
|PC1|192.168.1.10|
|PC2|192.168.1.20|

Both computers are connected to the same Ethernet switch.

When PC1 wants to send data to PC2, the following process takes place:

1. PC1 checks the destination IP address.
    
2. PC1 uses ARP (Address Resolution Protocol) to find the MAC address associated with the destination IP address, if it is not already available in its ARP cache.
    
3. PC1 encapsulates the data into an Ethernet Frame.
    
4. PC1 sends the Ethernet Frame to the switch.
    
5. The switch checks its MAC Address Table to identify the destination port.
    
6. The switch forwards the frame through the port connected to PC2.
    
7. PC2 receives and processes the data.
    

**Important Concepts:**

- IP Address: Identifies a device at the network layer.
    
- MAC Address: Identifies a network interface at the data link layer.
    
- ARP: Resolves IPv4 addresses to MAC addresses on a local network.
    
- Ethernet Frame: The data unit transmitted over an Ethernet network.
    
- Switch: Forwards Ethernet frames based on MAC addresses.
    

**Important:** Network topology defines how devices are connected, while networking protocols such as Ethernet define how data is transmitted.

## **4. Configuration / Examples**

Let's build a simple Star Topology using **Cisco Packet Tracer**.

### **Step 1: Add and Connect Devices**

1. Open Cisco Packet Tracer.
    
2. Add one Cisco 2960 Switch.
    
3. Add three PCs.
    
4. Connect each PC to the switch using Copper Straight-Through cables.
    

The resulting network should look like this:

```
          PC1
           |
           |
PC2 ---- Switch ---- PC3
```

### **Step 2: Configure IP Addresses**

Assign the following IP addresses to the computers:

|Device|IP Address|Subnet Mask|
|---|---|---|
|PC1|192.168.1.10|255.255.255.0|
|PC2|192.168.1.20|255.255.255.0|
|PC3|192.168.1.30|255.255.255.0|

Because all three computers belong to the same IP network, a Default Gateway is not required for communication between them.

### **Step 3: Test Network Connectivity**

On PC1, open the Command Prompt and run:

```
ping 192.168.1.20
```

If the connection is successful, you should see replies similar to:

```
Reply from 192.168.1.20
Reply from 192.168.1.20
Reply from 192.168.1.20
```

This indicates that PC1 can communicate with PC2.

**Note:** The first ping may occasionally time out while ARP resolution takes place. Try the command again before assuming that the connection has failed.

### **Optional: Basic Switch Verification**

On the Cisco switch, you can use the following commands:

```
show mac address-table
show interfaces status
show vlan brief
```

These commands help verify learned MAC addresses, port status, and VLAN membership.

## **5. Troubleshooting**

Network problems can occur for several reasons, including incorrect IP configuration, damaged cables, switch failures, and network loops.

The following table lists common problems and possible solutions:

|Problem|Possible Cause|Solution|
|---|---|---|
|Computers cannot communicate|Disconnected or damaged cable|Check the cable and physical connections|
|Ping fails|Incorrect IP address or subnet mask|Verify IP configuration|
|One device cannot communicate|Switch port problem|Check the switch port status|
|Entire network is unavailable|Central switch failure or power issue|Check the switch and its power supply|
|Intermittent network connectivity|Network loop or unstable link|Check network connections and Spanning Tree|
|Devices are in different VLANs|Incorrect VLAN configuration|Verify VLAN assignments and routing|

### **Useful Cisco Troubleshooting Commands**

**1. Check Interface Status**

```
show ip interface brief
```

Displays the status and IP configuration of Layer 3 interfaces.

**2. Check the MAC Address Table**

```
show mac address-table
```

Displays MAC addresses learned by the switch and the associated ports.

**3. Check VLAN Configuration**

```
show vlan brief
```

Displays VLANs and their associated access ports.

**4. Check Spanning Tree Status**

```
show spanning-tree
```

Displays Spanning Tree Protocol information and port states.

**5. Test Connectivity**

```
ping 192.168.1.20
```

Tests whether another device is reachable using IP.

**Important:** In networks with redundant switch links, Layer 2 loops can cause broadcast storms. The **Spanning Tree Protocol (STP)** helps prevent Layer 2 switching loops by placing redundant paths into a blocking state when necessary.

## **6. Practical Notes**

Keep the following points in mind when designing and managing networks:

1. Star Topology is widely used in modern Ethernet LANs.
    
2. Large networks commonly use a combination of different topologies.
    
3. Redundant links can improve network availability and provide alternative paths.
    
4. STP is important in Layer 2 switched networks with redundant connections because it helps prevent switching loops.
    
5. Topology selection should consider cost, number of users, reliability, security, and scalability.
    
6. Physical and logical topology describe different aspects of a network and should not be confused.
    
7. Network documentation should include device connections, switch ports, IP addressing, VLANs, and redundant links.
    
8. Redundancy improves availability only when it is designed and configured correctly.
    

### **Comparison of Network Topologies**

|Topology|Cost|Reliability|Common Use|
|---|---|---|---|
|Bus|Low|Low|Older networks and legacy systems|
|Star|Medium|Good|Modern Ethernet LANs|
|Ring|Medium|Depends on design|Specialized networks|
|Mesh|High|Very High|Critical networks and WAN connections|
|Tree|Medium to High|Good, depending on the hierarchy|Enterprise networks|
|Hybrid|Varies|Depends on design|Large organizations|

## **Summary**

Network topology describes how devices are connected and how communication paths are organized within a network.

The most important concepts to remember are:

- **Topology:** The arrangement of network devices and connections.
    
- **Physical Topology:** The physical layout of devices and cables.
    
- **Logical Topology:** The way data moves through the network.
    
- **Bus:** All devices share one main communication cable.
    
- **Star:** All devices connect to a central device, usually a switch.
    
- **Ring:** Devices connect in a circular structure.
    
- **Mesh:** Devices have multiple communication paths.
    
- **Tree:** Devices are organized in a hierarchical structure.
    
- **Hybrid:** A combination of two or more topologies.
    

Understanding network topologies is essential for network design, configuration, troubleshooting, and network administration.

## **Knowledge Check**

Test your understanding with these questions:

1. In a Star Topology, what device connects all the computers?
    
2. Which topology provides multiple alternative communication paths?
    
3. What is the main purpose of STP in a switched network?
    
4. What is the difference between Physical Topology and Logical Topology?
    
5. Why can a failure of the central switch affect an entire Star Topology network?
    

### **Answers**

1. A central device, usually an Ethernet switch.
    
2. Mesh Topology.
    
3. To prevent Layer 2 switching loops.
    
4. Physical Topology describes physical connections, while Logical Topology describes how data moves through the network.
    
5. Because all connected devices depend on the central switch for communication.