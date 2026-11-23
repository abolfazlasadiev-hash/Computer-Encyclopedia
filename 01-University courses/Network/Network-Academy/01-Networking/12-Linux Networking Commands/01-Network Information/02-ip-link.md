# **Linux** `ip link` **Command – Complete Guide**

The `ip link` command is one of the fundamental Linux networking commands. It is used to view, configure, enable, disable, and manage network interfaces at the **Data Link Layer (Layer 2)** of the OSI model.

It is part of the **IPRoute2** utility suite and provides functionality for managing physical and virtual network interfaces.

This guide covers the `ip link` command from beginner to advanced level, including practical examples, interface properties, virtual interfaces, and troubleshooting.

## **1. Basic Command Syntax**

```
ip link [OPTIONS] [COMMAND] [DEV INTERFACE]
```

|Component|Description|
|---|---|
|`ip`|Linux network management utility|
|`link`|Manage network interfaces|
|`OPTIONS`|Optional command parameters|
|`COMMAND`|Operation to perform|
|`DEV`|Specify a network interface|

Common operations include:

- Displaying network interfaces.
    
- Enabling and disabling interfaces.
    
- Changing MAC addresses.
    
- Modifying MTU.
    
- Changing interface properties.
    
- Creating and deleting virtual interfaces.
    
- Managing interface states.
    

## **2. Display Network Interfaces**

**Display all network interfaces:**

```
ip link
```

Or:

```
ip link show
```

Both commands display the network interfaces recognized by the Linux kernel.

**Display a specific interface:**

```
ip link show dev eth0
```

**Display interfaces in brief format:**

```
ip -br link
```

**Display detailed interface information:**

```
ip -details link show
```

**Display interface statistics:**

```
ip -s link
```

**Display statistics for a specific interface:**

```
ip -s link show dev eth0
```

## **3. Understanding the** `ip link` **Output**

Consider the following example:

```
2: enp0s31f6: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 00:11:22:33:44:55 brd ff:ff:ff:ff:ff:ff
```

Let's examine each component.

### **3.1. Interface Index and Name**

```
2: enp0s31f6:
```

- `2`: Interface index assigned by the Linux kernel.
    
- `enp0s31f6`: Network interface name.
    

Common interface names:

|Interface|Description|
|---|---|
|`lo`|Loopback interface|
|`eth0`|Traditional Ethernet interface name|
|`enp0s31f6`|Ethernet interface|
|`wlp1s0`|Wireless interface|
|`docker0`|Docker bridge|
|`lxcbr0`|LXC bridge|
|`tailscale0`|Tailscale virtual interface|
|`tun0`|VPN tunnel interface|
|`veth1234`|Virtual Ethernet interface|

### **3.2. Interface Flags**

```
<BROADCAST,MULTICAST,UP,LOWER_UP>
```

These flags describe the capabilities and state of the interface.

|Flag|Description|
|---|---|
|`BROADCAST`|Supports broadcast communication|
|`MULTICAST`|Supports multicast communication|
|`UP`|Interface is administratively enabled|
|`LOWER_UP`|Lower-layer connection is active|
|`LOOPBACK`|Loopback interface|
|`POINTOPOINT`|Point-to-point interface|
|`NOARP`|ARP is disabled on the interface|
|`PROMISC`|Promiscuous mode is enabled|
|`ALLMULTI`|Receives all multicast packets|

Important distinction:

- `UP` means the interface has been enabled administratively.
    
- `LOWER_UP` generally indicates that the underlying link is operational.
    

For example, an Ethernet interface may be administratively enabled but have no physical cable connected.

### **3.3. MTU (Maximum Transmission Unit)**

```
mtu 1500
```

MTU specifies the maximum size of a network-layer packet that can be carried in a link-layer frame without fragmentation.

Common MTU values:

|MTU|Typical Usage|
|---|---|
|`1500`|Standard Ethernet|
|`1492`|Some PPPoE connections|
|`9000`|Jumbo Frames|
|`1400`|Some VPN and tunnel configurations|

### **3.4. Queueing Discipline (qdisc)**

```
qdisc fq_codel
```

`qdisc` stands for **Queueing Discipline**.

It controls how outgoing packets are queued and scheduled before transmission.

Common queueing disciplines include:

- `fq_codel`
    
- `fq`
    
- `pfifo_fast`
    
- `noqueue`
    
- `mq`
    

The queueing discipline is part of Linux traffic control and can be configured using the `tc` command.

### **3.5. Interface Operational State**

```
state UP
```

This field describes the operational state of the interface.

Common values include:

|State|Description|
|---|---|
|`UP`|Interface is operational|
|`DOWN`|Interface is not operational|
|`UNKNOWN`|Operational state cannot be determined|
|`LOWERLAYERDOWN`|Lower-layer interface is down|
|`DORMANT`|Interface is waiting for an external event|

Note: `UNKNOWN` does not necessarily indicate a problem. It is common with certain virtual interfaces.

### **3.6. Interface Mode**

```
mode DEFAULT
```

This field describes the interface mode.

Common values include:

- `DEFAULT`: Normal interface mode.
    
- `DORMANT`: Interface is in a dormant mode.
    

The exact modes available depend on the interface type and driver.

### **3.7. Interface Group**

```
group default
```

This identifies the interface group.

Linux allows network interfaces to be organized into groups for management purposes.

The default group is commonly used when no custom group is configured.

### **3.8. Transmit Queue Length**

```
qlen 1000
```

`qlen` represents the transmit queue length.

It specifies the number of packets that can be queued for transmission at the interface level.

You can change it using:

```
sudo ip link set dev eth0 txqueuelen 2000
```

### **3.9. MAC Address**

```
link/ether 00:11:22:33:44:55
```

This line displays the link-layer address.

- `link`: Link-layer information.
    
- `ether`: Ethernet interface type.
    
- `00:11:22:33:44:55`: MAC address.
    

### **3.10. Broadcast MAC Address**

```
brd ff:ff:ff:ff:ff:ff
```

This is the Ethernet broadcast MAC address.

It is used to send Ethernet frames to all devices on the local broadcast domain.

## **4. Enabling and Disabling Network Interfaces**

One of the most common uses of `ip link` is controlling interface state.

**Enable an interface:**

```
sudo ip link set dev eth0 up
```

**Disable an interface:**

```
sudo ip link set dev eth0 down
```

**Check interface status:**

```
ip link show dev eth0
```

**Enable all interfaces manually:**

```
sudo ip link set dev eth0 up
sudo ip link set dev eth1 up
```

Note: Enabling an interface does not automatically assign an IP address. IP configuration is handled separately using `ip addr` or a network management service.

## **5. Changing the MAC Address**

The `ip link` command allows you to change the MAC address of a network interface.

**Display the current MAC address:**

```
ip link show dev eth0
```

**Disable the interface:**

```
sudo ip link set dev eth0 down
```

**Change the MAC address:**

```
sudo ip link set dev eth0 address 02:11:22:33:44:55
```

**Enable the interface again:**

```
sudo ip link set dev eth0 up
```

**Verify the new MAC address:**

```
ip link show dev eth0
```

Important notes:

- Use a locally administered unicast MAC address when setting a custom MAC.
    
- The first octet `02` is commonly used for this purpose.
    
- Some drivers and network managers may prevent or override MAC address changes.
    
- This change is generally temporary and may be lost after a reboot or network service restart.
    

## **6. Changing the MTU**

**Display the current MTU:**

```
ip link show dev eth0
```

**Set MTU to 1400:**

```
sudo ip link set dev eth0 mtu 1400
```

**Set MTU to 1500:**

```
sudo ip link set dev eth0 mtu 1500
```

**Verify the new MTU:**

```
ip link show dev eth0
```

MTU changes are useful when working with:

- VPN connections.
    
- GRE tunnels.
    
- WireGuard.
    
- VXLAN.
    
- PPPoE.
    
- Jumbo Frame networks.
    

Incorrect MTU settings can cause connectivity problems, packet fragmentation, or dropped packets.

## **7. Changing the Interface Name**

Linux allows you to rename a network interface.

For example, rename `eth0` to `lan0`.

**Disable the interface:**

```
sudo ip link set dev eth0 down
```

**Rename the interface:**

```
sudo ip link set dev eth0 name lan0
```

**Enable the renamed interface:**

```
sudo ip link set dev lan0 up
```

**Verify the new name:**

```
ip link show
```

Note: Renaming may fail if the interface is managed by another service or if the new name is already in use. Persistent interface naming should be configured through the appropriate network management system or systemd `.link` files.

## **8. Managing Promiscuous Mode**

Promiscuous mode allows a network interface to receive Ethernet frames that are not addressed to its own MAC address, subject to hardware and driver capabilities.

It is useful for:

- Network monitoring.
    
- Packet analysis.
    
- Wireshark.
    
- tcpdump.
    
- Network troubleshooting.
    

**Enable promiscuous mode:**

```
sudo ip link set dev eth0 promisc on
```

**Disable promiscuous mode:**

```
sudo ip link set dev eth0 promisc off
```

**Check the interface flags:**

```
ip link show dev eth0
```

If promiscuous mode is enabled, you should see:

```
<PROMISC>
```

Note: Promiscuous mode does not automatically allow you to capture all traffic on a switched network. Traffic must also be made visible to the interface, for example through port mirroring or a suitable network topology.

## **9. Managing Multicast Mode**

Multicast allows an interface to receive traffic sent to multicast groups.

**Enable all-multicast mode:**

```
sudo ip link set dev eth0 allmulticast on
```

**Disable all-multicast mode:**

```
sudo ip link set dev eth0 allmulticast off
```

This option requests that the interface receive all multicast traffic available to it.

It is different from enabling the `MULTICAST` capability flag, which indicates that the interface supports multicast.

## **10. Managing ARP on an Interface**

ARP (Address Resolution Protocol) is used by IPv4 devices to resolve IP addresses into MAC addresses on a local network.

**Disable ARP on an interface:**

```
sudo ip link set dev eth0 arp off
```

**Enable ARP again:**

```
sudo ip link set dev eth0 arp on
```

**Check the interface flags:**

```
ip link show dev eth0
```

When ARP is disabled, the `NOARP` flag may appear.

Warning: Disabling ARP on a normal Ethernet interface can break IPv4 connectivity. Use this setting only when you understand the network requirements.

## **11. Changing the Transmit Queue Length**

The transmit queue length determines how many packets can be queued for transmission at the interface level.

**Display the current queue length:**

```
ip link show dev eth0
```

**Change the queue length to 2000:**

```
sudo ip link set dev eth0 txqueuelen 2000
```

**Set it to 1000:**

```
sudo ip link set dev eth0 txqueuelen 1000
```

This setting may affect packet buffering and latency, but changing it does not automatically improve network performance.

## **12. Working with Virtual Network Interfaces**

Linux supports virtual network interfaces that do not require a physical network card.

These interfaces are commonly used in:

- Docker.
    
- LXC.
    
- Virtual machines.
    
- Network namespaces.
    
- VPNs.
    
- Network laboratories.
    
- GNS3 environments.
    

### **12.1. Creating a Dummy Interface**

A dummy interface is a virtual interface that can be used for testing and routing scenarios.

**Create a dummy interface:**

```
sudo ip link add dummy0 type dummy
```

**Enable it:**

```
sudo ip link set dev dummy0 up
```

**Assign an IP address:**

```
sudo ip addr add 192.168.100.1/24 dev dummy0
```

**Verify the interface:**

```
ip addr show dev dummy0
```

**Delete the dummy interface:**

```
sudo ip link delete dummy0
```

### **12.2. Creating a Virtual Ethernet Pair (veth)**

A veth pair consists of two interconnected virtual Ethernet interfaces.

Packets transmitted through one end are received by the other end.

**Create a veth pair:**

```
sudo ip link add veth0 type veth peer name veth1
```

**Enable both interfaces:**

```
sudo ip link set dev veth0 up
sudo ip link set dev veth1 up
```

**Assign IP addresses:**

```
sudo ip addr add 10.10.10.1/24 dev veth0
sudo ip addr add 10.10.10.2/24 dev veth1
```

**Test connectivity:**

```
ping -c 4 10.10.10.2
```

**Delete the pair:**

```
sudo ip link delete veth0
```

Deleting one end normally deletes the entire veth pair.

### **12.3. Creating a VLAN Interface**

A VLAN interface allows a physical or virtual interface to handle traffic belonging to a specific IEEE 802.1Q VLAN.

**Create VLAN 10 on eth0:**

```
sudo ip link add link eth0 name eth0.10 type vlan id 10
```

**Enable the VLAN interface:**

```
sudo ip link set dev eth0.10 up
```

**Assign an IP address:**

```
sudo ip addr add 192.168.10.1/24 dev eth0.10
```

**Verify the VLAN:**

```
ip -details link show dev eth0.10
```

**Delete the VLAN interface:**

```
sudo ip link delete eth0.10
```

Note: The physical or parent interface must be connected to a network that carries the relevant VLAN traffic.

### **12.4. Creating a Bridge Interface**

A Linux bridge connects multiple network interfaces at Layer 2.

It is commonly used in virtualization and container networking.

**Create a bridge:**

```
sudo ip link add name br0 type bridge
```

**Enable the bridge:**

```
sudo ip link set dev br0 up
```

**Add an interface to the bridge:**

```
sudo ip link set dev eth0 master br0
```

**Verify the bridge:**

```
ip link show master br0
```

**Remove the interface from the bridge:**

```
sudo ip link set dev eth0 nomaster
```

**Delete the bridge:**

```
sudo ip link delete br0 type bridge
```

Important: When configuring a bridge, the host's IP address is usually assigned to the bridge interface rather than the physical interface attached to it. Changing a live bridge configuration can interrupt connectivity.

## **13. Interface Statistics and Troubleshooting**

The `ip link` command provides useful information for network troubleshooting.

**Display all interface statistics:**

```
ip -s link
```

Example:

```
2: eth0:
    RX: bytes  packets  errors  dropped  missed  mcast
    1250000    15000    0       2        0       100

    TX: bytes  packets  errors  dropped  carrier collsns
    980000     12000    0       0        0       0
```

Important statistics:

|Field|Description|
|---|---|
|`RX`|Received traffic|
|`TX`|Transmitted traffic|
|`bytes`|Number of bytes|
|`packets`|Number of packets|
|`errors`|Packet errors|
|`dropped`|Dropped packets|
|`missed`|Missed packets|
|`mcast`|Multicast packets|
|`carrier`|Carrier-related transmission errors|
|`collsns`|Collision count|

To display detailed statistics for a specific interface:

```
ip -s -s link show dev eth0
```

Using `-s -s` requests additional statistics when supported by the interface driver.

### **Common Troubleshooting Scenarios**

|Problem|Command|
|---|---|
|Interface is disabled|`ip link show`|
|Interface needs enabling|`sudo ip link set eth0 up`|
|Interface has no physical link|`ip link show eth0`|
|Incorrect MTU|`ip link show eth0`|
|Unexpected MAC address|`ip link show eth0`|
|Packet drops|`ip -s link show eth0`|
|Interface is attached to a bridge|`ip link show master br0`|

## **14. Temporary and Persistent Configuration**

Changes made with `ip link` are generally temporary.

For example:

```
sudo ip link set dev eth0 mtu 1400
```

This setting may be lost after a system restart or when a network management service reapplies its configuration.

For persistent configuration, use the appropriate tool:

- NetworkManager.
    
- Netplan.
    
- systemd-networkd.
    
- systemd `.link` files.
    
- Distribution-specific network configuration.
    

For example, NetworkManager can manage interface settings using:

```
nmcli device status
```

## **15. Differences Between** `ip addr` **and** `ip link`

These commands are closely related but serve different purposes.

|Feature|`ip addr`|`ip link`|
|---|---|---|
|Display IP addresses|Yes|No|
|Add IPv4 addresses|Yes|No|
|Add IPv6 addresses|Yes|No|
|Remove IP addresses|Yes|No|
|Display MAC addresses|Yes|Yes|
|Change MAC address|No|Yes|
|Enable interface|No|Yes|
|Disable interface|No|Yes|
|Change MTU|No|Yes|
|Change interface name|No|Yes|
|Manage virtual interfaces|Limited|Yes|
|Display interface statistics|No|Yes|

**Remember:**

- `ip addr` manages Layer 3 addressing.
    
- `ip link` manages Layer 2 interfaces and their properties.
    

## **16. Practical Exercises**

Practice the following exercises to understand how `ip link` works.

### **Exercise 1: Inspect All Network Interfaces**

```
ip link show
```

Then display a brief summary:

```
ip -br link
```

Identify the following:

- Physical Ethernet interface.
    
- Wireless interface.
    
- Loopback interface.
    
- Virtual interfaces.
    

### **Exercise 2: Change the MTU**

Display the current MTU:

```
ip link show dev eth0
```

Change it to 1400:

```
sudo ip link set dev eth0 mtu 1400
```

Verify the result:

```
ip link show dev eth0
```

Restore the original MTU if necessary.

### **Exercise 3: Enable and Disable an Interface**

Disable the interface:

```
sudo ip link set dev eth0 down
```

Enable it again:

```
sudo ip link set dev eth0 up
```

Verify its status:

```
ip link show dev eth0
```

Warning: Do not perform this exercise on the interface you are using for remote access.

### **Exercise 4: Create a Dummy Interface**

Create a virtual interface:

```
sudo ip link add dummy0 type dummy
```

Enable it:

```
sudo ip link set dev dummy0 up
```

Assign an IP address:

```
sudo ip addr add 192.168.100.1/24 dev dummy0
```

Verify the configuration:

```
ip addr show dev dummy0
```

Delete the interface:

```
sudo ip link delete dummy0
```

### **Exercise 5: Create a veth Pair**

Create two interconnected virtual interfaces:

```
sudo ip link add veth0 type veth peer name veth1
```

Enable both interfaces:

```
sudo ip link set veth0 up
sudo ip link set veth1 up
```

Assign IP addresses:

```
sudo ip addr add 10.10.10.1/24 dev veth0
sudo ip addr add 10.10.10.2/24 dev veth1
```

Test connectivity:

```
ping -c 4 10.10.10.2
```

Clean up:

```
sudo ip link delete veth0
```

## **17. Cheat Sheet – Quick Reference**

|Command|Description|
|---|---|
|`ip link`|Display network interfaces|
|`ip link show`|Show all interfaces|
|`ip -br link`|Display brief interface information|
|`ip -details link show`|Display detailed interface information|
|`ip -s link`|Display interface statistics|
|`ip link show dev eth0`|Show a specific interface|
|`ip link set eth0 up`|Enable an interface|
|`ip link set eth0 down`|Disable an interface|
|`ip link set eth0 mtu 1400`|Change MTU|
|`ip link set eth0 address 02:11:22:33:44:55`|Change MAC address|
|`ip link set eth0 name lan0`|Rename an interface|
|`ip link set eth0 promisc on`|Enable promiscuous mode|
|`ip link set eth0 promisc off`|Disable promiscuous mode|
|`ip link set eth0 arp off`|Disable ARP|
|`ip link set eth0 arp on`|Enable ARP|
|`ip link set eth0 txqueuelen 2000`|Change transmit queue length|
|`ip link add dummy0 type dummy`|Create a dummy interface|
|`ip link add veth0 type veth peer name veth1`|Create a veth pair|
|`ip link add name br0 type bridge`|Create a bridge|
|`ip link delete dummy0`|Delete an interface|
|`ip link show master br0`|Display bridge member interfaces|

## **18. Learning Resources**

For additional information and advanced usage, refer to the official documentation:

- [Linux ip-link Manual](https://man7.org/linux/man-pages/man8/ip-link.8.html?utm_source=chatgpt.com)
    
- [Linux ip-address Manual](https://man7.org/linux/man-pages/man8/ip-address.8.html?utm_source=chatgpt.com)
    
- [IPRoute2 Documentation](https://www.kernel.org/doc/html/latest/networking/?utm_source=chatgpt.com)
    

## **Conclusion**

The `ip link` command is an essential tool for Linux network administration.

Understanding this command helps you:

- Inspect physical and virtual network interfaces.
    
- Enable and disable network interfaces.
    
- Change MAC addresses.
    
- Configure MTU values.
    
- Manage promiscuous and multicast modes.
    
- Create and manage virtual interfaces.
    
- Configure VLANs and Linux bridges.
    
- Monitor network interface statistics.
    
- Troubleshoot Layer 2 networking problems.
    

**Recommended learning sequence:**

1. `ip addr` – IP Address Management
    
2. `ip link` – Network Interface Management
    
3. `ip route` – Routing Table Management
    
4. `ip neigh` – ARP and Neighbor Discovery
    
5. `ip rule` – Policy-Based Routing
    

Mastering these commands will give you a strong foundation in Linux networking, network administration, and troubleshooting.