# **Linux** `ip addr` **Command – Complete Guide**

The `ip addr` command is one of the most important Linux networking commands. It is used to view, add, modify, and remove IP addresses assigned to network interfaces.

It is part of the **IPRoute2** utility suite and is the modern replacement for the older `ifconfig` command.

This guide covers the `ip addr` command from beginner to advanced level, including practical examples and troubleshooting techniques.

## **1. Basic Command Syntax**

```
ip addr [OPTIONS] [COMMAND] [DEV INTERFACE]
```

|Component|Description|
|---|---|
|`ip`|Linux network management utility|
|`addr`|Manage IP addresses|
|`OPTIONS`|Optional command parameters|
|`COMMAND`|Operation to perform|
|`DEV`|Specify a network interface|

## **2. Display IP Addresses**

**Display all network interfaces and their IP addresses:**

```
ip addr
```

Or use the shorter version:

```
ip a
```

Both commands perform the same operation.

**Display IPv4 addresses only:**

```
ip -4 addr
```

**Display IPv6 addresses only:**

```
ip -6 addr
```

**Display a brief summary of all interfaces:**

```
ip -br addr
```

**Display a brief summary of IPv4 addresses:**

```
ip -br -4 addr
```

**Display information about a specific network interface:**

```
ip addr show dev eth0
```

Replace `eth0` with your actual interface name. For example:

```
ip addr show dev wlp1s0
```

## **3. Understanding the** `ip addr` **Output**

Consider the following example:

```
2: enp0s31f6: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 00:11:22:33:44:55 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.100/24 brd 192.168.1.255 scope global dynamic enp0s31f6
    inet6 fe80::211:22ff:fe33:4455/64 scope link
```

Let's examine each part.

### **3.1. Interface Index and Name**

```
2: enp0s31f6:
```

- `2`: The interface index assigned by the Linux kernel.
    
- `enp0s31f6`: The network interface name.
    

Common Linux network interface names:

|Interface|Description|
|---|---|
|`lo`|Loopback interface|
|`eth0`|Ethernet interface using traditional naming|
|`enp0s31f6`|Ethernet interface using predictable naming|
|`wlp1s0`|Wireless network interface|
|`docker0`|Docker bridge interface|
|`lxcbr0`|LXC bridge interface|
|`tailscale0`|Tailscale virtual interface|
|`tun0`|VPN tunnel interface|

### **3.2. Interface Flags and Status**

```
<BROADCAST,MULTICAST,UP,LOWER_UP>
```

These flags describe the capabilities and operational characteristics of the interface.

|Flag|Description|
|---|---|
|`BROADCAST`|Supports broadcast communication|
|`MULTICAST`|Supports multicast communication|
|`UP`|Interface is administratively enabled|
|`LOWER_UP`|Lower-layer connection is active|
|`LOOPBACK`|Loopback interface|
|`POINTOPOINT`|Point-to-point interface|

Important distinction:

- `UP` means the interface has been enabled administratively.
    
- `LOWER_UP` generally indicates that the underlying link is operational.
    

### **3.3. MTU (Maximum Transmission Unit)**

```
mtu 1500
```

MTU stands for **Maximum Transmission Unit**.

It specifies the maximum size of a network-layer packet that can be carried in a link-layer frame without fragmentation.

Common MTU values:

|MTU|Typical Usage|
|---|---|
|`1500`|Standard Ethernet|
|`1492`|Some PPPoE connections|
|`9000`|Jumbo Frames|

### **3.4. Queueing Discipline (qdisc)**

```
qdisc fq_codel
```

`qdisc` stands for **Queueing Discipline**.

It determines how outgoing packets are queued and scheduled before transmission.

Common queueing disciplines include:

- `fq_codel`
    
- `fq`
    
- `pfifo_fast`
    
- `noqueue`
    

### **3.5. Operational State**

```
state UP
```

This field indicates the operational state of the network interface.

Possible values include:

- `UP`
    
- `DOWN`
    
- `UNKNOWN`
    
- `LOWERLAYERDOWN`
    
- `DORMANT`
    

Note: `UNKNOWN` does not necessarily indicate a network problem. It is normal for some virtual interfaces.

### **3.6. MAC Address**

```
link/ether 00:11:22:33:44:55
```

This line displays link-layer information.

- `link`: Link-layer information.
    
- `ether`: Ethernet interface type.
    
- `00:11:22:33:44:55`: MAC address.
    

To display the MAC address of a specific interface:

```
ip link show dev eth0
```

### **3.7. IPv4 Address**

```
inet 192.168.1.100/24
```

This line displays the IPv4 address assigned to the interface.

- `inet`: Indicates an IPv4 address.
    
- `192.168.1.100`: The assigned IP address.
    
- `/24`: Prefix length.
    

The equivalent subnet mask for `/24` is:

```
255.255.255.0
```

### **3.8. Broadcast Address**

```
brd 192.168.1.255
```

This field displays the broadcast address of the network.

For the network `192.168.1.0/24`:

|Network Property|Address|
|---|---|
|Network Address|`192.168.1.0`|
|Usable IP Range|`192.168.1.1 - 192.168.1.254`|
|Broadcast Address|`192.168.1.255`|

### **3.9. Address Scope**

```
scope global
```

The scope defines the range within which an IP address is valid.

|Scope|Description|
|---|---|
|`global`|Address with network-wide scope|
|`link`|Address valid only on the local network link|
|`host`|Address valid only within the local host|

Important: `scope global` does not necessarily mean that an address is publicly accessible over the Internet. Private addresses such as `192.168.1.100` can also have `scope global`.

### **3.10. Dynamic Address Assignment**

```
dynamic
```

This indicates that the IP address was dynamically assigned, commonly through DHCP.

The `dynamic` keyword may not always appear in the output. Its absence alone does not prove that an address was manually configured.

### **3.11. IPv6 Address**

```
inet6 fe80::211:22ff:fe33:4455/64 scope link
```

This line displays the IPv6 address assigned to the interface.

Common IPv6 address ranges:

|Prefix / Address|Description|
|---|---|
|`fe80::/10`|Link-Local addresses|
|`2000::/3`|Global Unicast addresses|
|`::1`|IPv6 Loopback address|
|`fc00::/7`|Unique Local addresses|

## **4. Adding an IP Address to a Network Interface**

To add an IPv4 address:

```
sudo ip addr add 192.168.1.100/24 dev eth0
```

To add a second IP address to the same interface:

```
sudo ip addr add 192.168.1.101/24 dev eth0
```

To add an IPv6 address:

```
sudo ip -6 addr add 2001:db8:1::10/64 dev eth0
```

Note: The `2001:db8::/32` IPv6 range is reserved for documentation and examples. It should not be used as a real Internet-routable address.

## **5. Removing an IP Address**

To remove a specific IPv4 address:

```
sudo ip addr del 192.168.1.100/24 dev eth0
```

To remove a specific IPv6 address:

```
sudo ip -6 addr del 2001:db8:1::10/64 dev eth0
```

To remove all IPv4 addresses from an interface:

```
sudo ip -4 addr flush dev eth0
```

Warning

The `flush` command removes all IPv4 addresses from the specified interface. If you are connected to the system remotely, this may terminate your connection.

## **6. Enabling and Disabling a Network Interface**

To enable a network interface:

```
sudo ip link set dev eth0 up
```

To disable a network interface:

```
sudo ip link set dev eth0 down
```

To check the interface status:

```
ip link show dev eth0
```

Note: Enabling and disabling interfaces is handled by `ip link`, not `ip addr`.

## **7. Changing the MTU**

To display the current MTU:

```
ip link show dev eth0
```

To change the MTU to 1400:

```
sudo ip link set dev eth0 mtu 1400
```

To restore the MTU to 1500:

```
sudo ip link set dev eth0 mtu 1500
```

## **8. Configuring an IP Address with a Specific Broadcast Address**

You can explicitly specify the broadcast address when adding an IPv4 address:

```
sudo ip addr add 192.168.1.100/24 brd 192.168.1.255 dev eth0
```

Alternatively, you can let Linux calculate the broadcast address automatically:

```
sudo ip addr add 192.168.1.100/24 dev eth0
```

Broadcast configuration is generally not relevant for point-to-point interfaces.

## **9. Temporary and Persistent IP Configuration**

Changes made with `ip addr` are generally temporary.

They may disappear after:

- System restart.
    
- Network service restart.
    
- NetworkManager reapplying its configuration.
    
- Another network management service changing the interface configuration.
    

For persistent network configuration, use the network management system available on your Linux distribution.

Common network configuration tools include:

- NetworkManager
    
- Netplan
    
- systemd-networkd
    
- Distribution-specific network configuration tools
    

To check NetworkManager device status:

```
nmcli device status
```

On Ubuntu-based systems using Netplan, you can check the network status with:

```
sudo netplan status
```

## **10. Advanced** `ip addr` **Commands**

**Display IPv4 addresses in one-line format:**

```
ip -o -4 addr show
```

**Display only interfaces that are administratively up:**

```
ip -br addr show up
```

**Display addresses matching a specific prefix:**

```
ip addr show to 192.168.1.0/24
```

**Display detailed interface address information:**

```
ip -details addr show dev eth0
```

**Display addresses associated with a specific interface label:**

```
ip addr show label eth0
```

## **11. Differences Between Important Linux IP Commands**

The `ip` utility provides several subcommands for different networking tasks.

|Command|Purpose|
|---|---|
|`ip addr`|Display and manage IP addresses|
|`ip link`|Manage network interfaces and link properties|
|`ip route`|Display and manage routing tables|
|`ip neigh`|Display and manage ARP and Neighbor Discovery entries|
|`ip rule`|Manage policy-based routing rules|
|`ip -s link`|Display interface traffic statistics|

## **12. Practical Exercises**

Practice the following commands to become familiar with `ip addr`.

### **Exercise 1: Inspect Network Interfaces**

Display a summary of all interfaces:

```
ip -br addr
```

Display IPv4 addresses:

```
ip -4 addr
```

Display IPv6 addresses:

```
ip -6 addr
```

### **Exercise 2: Inspect a Specific Network Interface**

```
ip addr show dev wlp1s0
```

Replace `wlp1s0` with the actual interface name on your Linux system.

### **Exercise 3: Add a Test IP Address**

Add a secondary IP address to the Loopback interface:

```
sudo ip addr add 10.10.10.10/24 dev lo
```

Verify the configuration:

```
ip addr show dev lo
```

### **Exercise 4: Remove the Test IP Address**

Remove the address added in the previous exercise:

```
sudo ip addr del 10.10.10.10/24 dev lo
```

### **Exercise 5: Check Network Interface Statistics**

```
ip -s link
```

This command displays interface statistics, including:

- Received packets.
    
- Transmitted packets.
    
- Received bytes.
    
- Transmitted bytes.
    
- Packet errors.
    
- Dropped packets.
    

## **13. Cheat Sheet – Quick Reference**

The following table summarizes the most useful `ip addr` and related commands.

|Command|Description|
|---|---|
|`ip a`|Display all IP addresses|
|`ip -4 a`|Display IPv4 addresses|
|`ip -6 a`|Display IPv6 addresses|
|`ip -br a`|Display a brief interface summary|
|`ip a show dev eth0`|Display IP information for a specific interface|
|`ip addr add IP/24 dev eth0`|Add an IP address|
|`ip addr del IP/24 dev eth0`|Remove an IP address|
|`ip -4 addr flush dev eth0`|Remove all IPv4 addresses|
|`ip link show`|Display network interfaces|
|`ip link set eth0 up`|Enable an interface|
|`ip link set eth0 down`|Disable an interface|
|`ip link set eth0 mtu 1400`|Change interface MTU|
|`ip -s link`|Display network statistics|
|`ip -details addr`|Display detailed address information|

## **14. Learning Resources**

For additional information and advanced usage, refer to the following official documentation:

- [Linux ip-address Manual](https://man7.org/linux/man-pages/man8/ip-address.8.html?utm_source=chatgpt.com)
    
- [Linux ip-link Manual](https://man7.org/linux/man-pages/man8/ip-link.8.html?utm_source=chatgpt.com)
    
- [IPRoute2 Documentation](https://www.kernel.org/doc/html/latest/networking/?utm_source=chatgpt.com)
    

## **Conclusion**

The `ip addr` command is an essential tool for Linux network administration.

Understanding this command helps you:

- Identify network interfaces.
    
- Inspect IPv4 and IPv6 addresses.
    
- Understand MAC addresses and interface properties.
    
- Add and remove IP addresses.
    
- Troubleshoot basic network configuration problems.
    
- Work with virtual network interfaces.
    

**Recommended learning sequence:**

1. `ip addr` – IP Address Management
    
2. `ip link` – Network Interface Management
    
3. `ip route` – Routing Table Management
    
4. `ip neigh` – ARP and Neighbor Discovery
    

Mastering these four commands provides a solid foundation for Linux networking and network troubleshooting.