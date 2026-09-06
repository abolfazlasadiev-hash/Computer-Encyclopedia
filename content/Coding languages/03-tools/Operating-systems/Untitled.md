```
LINUX/
│
├── 1-fundamentals/
│   ├── 1. what is linux.md
│   ├── 2. history of linux.md
│   ├── 3. linux philosophy.md
│   ├── 4. linux distributions/
│   │   ├── 1. what is a linux distribution.md
│   │   ├── 2. ubuntu.md
│   │   ├── 3. debian.md
│   │   ├── 4. fedora.md
│   │   ├── 5. red hat enterprise linux.md
│   │   ├── 6. arch linux.md
│   │   ├── 7. alpine linux.md
│   │   └── 8. choosing a distribution.md
│   ├── 5. kernel vs operating system.md
│   ├── 6. desktop vs server.md
│   ├── 7. linux architecture.md
│   ├── 8. open source and free software.md
│   ├── 9. linux licensing.md
│   ├── 10. installing linux.md
│   ├── 11. virtual machines.md
│   ├── 12. dual boot.md
│   └── 13. first steps after installation.md
│
├── 2-command-line-terminal/
│   ├── 1. terminal basics/
│   │   ├── 1. what is a terminal.md
│   │   ├── 2. shell vs terminal.md
│   │   ├── 3. command structure.md
│   │   ├── 4. command options and arguments.md
│   │   └── 5. command history.md
│   │
│   ├── 2. navigation/
│   │   ├── 1. pwd.md
│   │   ├── 2. ls.md
│   │   ├── 3. cd.md
│   │   ├── 4. tree.md
│   │   ├── 5. absolute paths.md
│   │   ├── 6. relative paths.md
│   │   └── 7. special paths.md
│   │
│   ├── 3. files and directories/
│   │   ├── 1. touch.md
│   │   ├── 2. mkdir.md
│   │   ├── 3. cp.md
│   │   ├── 4. mv.md
│   │   ├── 5. rm.md
│   │   ├── 6. rmdir.md
│   │   ├── 7. wildcards.md
│   │   └── 8. hidden files.md
│   │
│   ├── 4. reading files/
│   │   ├── 1. cat.md
│   │   ├── 2. less.md
│   │   ├── 3. more.md
│   │   ├── 4. head.md
│   │   ├── 5. tail.md
│   │   ├── 6. wc.md
│   │   └── 7. file.md
│   │
│   ├── 5. searching/
│   │   ├── 1. find.md
│   │   ├── 2. grep.md
│   │   ├── 3. locate.md
│   │   ├── 4. which.md
│   │   ├── 5. whereis.md
│   │   └── 6. type.md
│   │
│   ├── 6. file information/
│   │   ├── 1. stat.md
│   │   ├── 2. du.md
│   │   ├── 3. df.md
│   │   └── 4. ls options.md
│   │
│   ├── 7. help/
│   │   ├── 1. man.md
│   │   ├── 2. info.md
│   │   ├── 3. --help.md
│   │   ├── 4. apropos.md
│   │   └── 5. help command.md
│   │
│   └── 8. terminal productivity/
│       ├── 1. tab completion.md
│       ├── 2. command history.md
│       ├── 3. aliases.md
│       ├── 4. keyboard shortcuts.md
│       └── 5. command chaining.md
│
├── 3-linux-filesystem/
│   ├── 1. filesystem hierarchy.md
│   ├── 2. root filesystem.md
│   ├── 3. home.md
│   ├── 4. etc.md
│   ├── 5. var.md
│   ├── 6. usr.md
│   ├── 7. bin.md
│   ├── 8. sbin.md
│   ├── 9. lib.md
│   ├── 10. lib64.md
│   ├── 11. boot.md
│   ├── 12. dev.md
│   ├── 13. proc.md
│   ├── 14. sys.md
│   ├── 15. run.md
│   ├── 16. tmp.md
│   ├── 17. opt.md
│   ├── 18. srv.md
│   ├── 19. mnt.md
│   ├── 20. media.md
│   ├── 21. lost and found.md
│   └── 22. filesystem best practices.md
│
├── 4-users-and-permissions/
│   ├── 1. users/
│   │   ├── 1. linux users.md
│   │   ├── 2. user ids.md
│   │   ├── 3. creating users.md
│   │   ├── 4. modifying users.md
│   │   ├── 5. deleting users.md
│   │   └── 6. user configuration files.md
│   │
│   ├── 2. groups/
│   │   ├── 1. linux groups.md
│   │   ├── 2. group ids.md
│   │   ├── 3. creating groups.md
│   │   ├── 4. modifying groups.md
│   │   └── 5. deleting groups.md
│   │
│   ├── 3. root/
│   │   ├── 1. root user.md
│   │   ├── 2. root shell.md
│   │   └── 3. dangers of root.md
│   │
│   ├── 4. permissions/
│   │   ├── 1. file permissions.md
│   │   ├── 2. read permission.md
│   │   ├── 3. write permission.md
│   │   ├── 4. execute permission.md
│   │   ├── 5. numeric permissions.md
│   │   ├── 6. symbolic permissions.md
│   │   └── 7. special permissions.md
│   │
│   ├── 5. chmod/
│   │   ├── 1. chmod basics.md
│   │   ├── 2. chmod numeric mode.md
│   │   └── 3. chmod symbolic mode.md
│   │
│   ├── 6. ownership/
│   │   ├── 1. chown.md
│   │   ├── 2. chgrp.md
│   │   └── 3. ownership concepts.md
│   │
│   └── 7. sudo/
│       ├── 1. sudo basics.md
│       ├── 2. sudo configuration.md
│       ├── 3. sudoers.md
│       └── 4. least privilege.md
│
├── 5-processes-and-system/
│   ├── 1. processes/
│   │   ├── 1. what is a process.md
│   │   ├── 2. process ids.md
│   │   ├── 3. parent and child processes.md
│   │   ├── 4. foreground processes.md
│   │   └── 5. background processes.md
│   │
│   ├── 2. ps/
│   │   ├── 1. ps basics.md
│   │   ├── 2. ps aux.md
│   │   └── 3. process filtering.md
│   │
│   ├── 3. top and htop/
│   │   ├── 1. top.md
│   │   ├── 2. htop.md
│   │   └── 3. monitoring cpu and memory.md
│   │
│   ├── 4. signals and kill/
│   │   ├── 1. linux signals.md
│   │   ├── 2. kill.md
│   │   ├── 3. killall.md
│   │   └── 4. pkill.md
│   │
│   ├── 5. jobs/
│   │   ├── 1. jobs.md
│   │   ├── 2. bg.md
│   │   ├── 3. fg.md
│   │   └── 4. nohup.md
│   │
│   ├── 6. systemd/
│   │   ├── 1. what is systemd.md
│   │   ├── 2. systemd units.md
│   │   ├── 3. services.md
│   │   └── 4. targets.md
│   │
│   ├── 7. systemctl/
│   │   ├── 1. systemctl status.md
│   │   ├── 2. systemctl start.md
│   │   ├── 3. systemctl stop.md
│   │   ├── 4. systemctl restart.md
│   │   ├── 5. systemctl enable.md
│   │   └── 6. systemctl disable.md
│   │
│   ├── 8. journalctl/
│   │   ├── 1. journalctl basics.md
│   │   ├── 2. viewing service logs.md
│   │   └── 3. filtering logs.md
│   │
│   └── 9. system monitoring/
│       ├── 1. cpu monitoring.md
│       ├── 2. memory monitoring.md
│       ├── 3. disk monitoring.md
│       ├── 4. load average.md
│       └── 5. uptime.md
│
├── 6-text-processing-and-shell/
│   ├── 1. pipes/
│   │   ├── 1. pipe basics.md
│   │   └── 2. chaining commands.md
│   │
│   ├── 2. redirection/
│   │   ├── 1. stdout.md
│   │   ├── 2. stdin.md
│   │   ├── 3. stderr.md
│   │   ├── 4. redirection.md
│   │   └── 5. append redirection.md
│   │
│   ├── 3. grep/
│   │   ├── 1. grep basics.md
│   │   ├── 2. grep options.md
│   │   └── 3. advanced grep.md
│   │
│   ├── 4. cut.md
│   ├── 5. sort.md
│   ├── 6. uniq.md
│   ├── 7. tr.md
│   ├── 8. tee.md
│   ├── 9. xargs.md
│   │
│   ├── 10. awk/
│   │   ├── 1. awk basics.md
│   │   ├── 2. awk fields.md
│   │   ├── 3. awk patterns.md
│   │   └── 4. awk scripting.md
│   │
│   ├── 11. sed/
│   │   ├── 1. sed basics.md
│   │   ├── 2. sed substitutions.md
│   │   └── 3. advanced sed.md
│   │
│   └── 12. regular expressions/
│       ├── 1. regex basics.md
│       ├── 2. character classes.md
│       ├── 3. anchors.md
│       ├── 4. quantifiers.md
│       └── 5. practical regex.md
│
├── 7-package-management/
│   ├── 1. packages and repositories.md
│   ├── 2. apt/
│   │   ├── 1. apt basics.md
│   │   ├── 2. apt install.md
│   │   ├── 3. apt update.md
│   │   ├── 4. apt upgrade.md
│   │   ├── 5. apt remove.md
│   │   └── 6. apt search.md
│   ├── 3. dnf/
│   │   ├── 1. dnf basics.md
│   │   ├── 2. installing packages.md
│   │   ├── 3. updating packages.md
│   │   └── 4. removing packages.md
│   ├── 4. pacman/
│   │   ├── 1. pacman basics.md
│   │   ├── 2. installing packages.md
│   │   ├── 3. updating packages.md
│   │   └── 4. removing packages.md
│   ├── 5. repositories.md
│   ├── 6. package files.md
│   └── 7. compiling from source.md
│
├── 8-networking/
│   ├── 1. networking fundamentals/
│   │   ├── 1. ip addresses.md
│   │   ├── 2. ipv4.md
│   │   ├── 3. ipv6.md
│   │   ├── 4. subnetting.md
│   │   ├── 5. mac addresses.md
│   │   ├── 6. gateways.md
│   │   └── 7. routing.md
│   │
│   ├── 2. dns/
│   │   ├── 1. what is dns.md
│   │   ├── 2. dns records.md
│   │   ├── 3. dns resolution.md
│   │   ├── 4. resolv.conf.md
│   │   └── 5. dig and nslookup.md
│   │
│   ├── 3. ports and protocols/
│   │   ├── 1. ports.md
│   │   ├── 2. tcp.md
│   │   ├── 3. udp.md
│   │   ├── 4. tcp vs udp.md
│   │   └── 5. common ports.md
│   │
│   ├── 4. network commands/
│   │   ├── 1. ping.md
│   │   ├── 2. ip.md
│   │   ├── 3. ss.md
│   │   ├── 4. traceroute.md
│   │   ├── 5. curl.md
│   │   ├── 6. wget.md
│   │   └── 7. netstat.md
│   │
│   ├── 5. ssh/
│   │   ├── 1. what is ssh.md
│   │   ├── 2. ssh client.md
│   │   ├── 3. ssh keys.md
│   │   ├── 4. ssh config.md
│   │   ├── 5. ssh authentication.md
│   │   ├── 6. ssh agent.md
│   │   └── 7. ssh troubleshooting.md
│   │
│   ├── 6. scp and file transfer/
│   │   ├── 1. scp.md
│   │   ├── 2. sftp.md
│   │   └── 3. rsync.md
│   │
│   └── 7. firewall/
│       ├── 1. firewall concepts.md
│       ├── 2. ufw.md
│       ├── 3. firewalld.md
│       ├── 4. nftables.md
│       └── 5. firewall troubleshooting.md
│
├── 9-bash-scripting/
│   ├── 1. bash fundamentals/
│   │   ├── 1. what is bash.md
│   │   ├── 2. bash vs shell.md
│   │   ├── 3. shebang.md
│   │   ├── 4. script permissions.md
│   │   └── 5. running scripts.md
│   │
│   ├── 2. variables/
│   │   ├── 1. variables.md
│   │   ├── 2. strings.md
│   │   ├── 3. numbers.md
│   │   └── 4. arrays.md
│   │
│   ├── 3. arguments/
│   │   ├── 1. positional arguments.md
│   │   ├── 2. command line arguments.md
│   │   ├── 3. getopts.md
│   │   └── 4. argument validation.md
│   │
│   ├── 4. conditions/
│   │   ├── 1. if statements.md
│   │   ├── 2. test command.md
│   │   ├── 3. file tests.md
│   │   ├── 4. string tests.md
│   │   └── 5. case statements.md
│   │
│   ├── 5. loops/
│   │   ├── 1. for loops.md
│   │   ├── 2. while loops.md
│   │   ├── 3. until loops.md
│   │   └── 4. loop control.md
│   │
│   ├── 6. functions/
│   │   ├── 1. functions.md
│   │   ├── 2. function arguments.md
│   │   └── 3. return values.md
│   │
│   ├── 7. exit codes.md
│   ├── 8. environment variables.md
│   ├── 9. command substitution.md
│   ├── 10. quoting.md
│   ├── 11. input and output.md
│   ├── 12. error handling.md
│   ├── 13. debugging bash scripts.md
│   └── 14. automation projects.md
│
├── 10-storage/
│   ├── 1. storage fundamentals/
│   │   ├── 1. disks.md
│   │   ├── 2. hard drives.md
│   │   ├── 3. ssds.md
│   │   └── 4. storage terminology.md
│   │
│   ├── 2. partitions/
│   │   ├── 1. partitions.md
│   │   ├── 2. mbr.md
│   │   ├── 3. gpt.md
│   │   ├── 4. fdisk.md
│   │   └── 5. parted.md
│   │
│   ├── 3. filesystems/
│   │   ├── 1. what is a filesystem.md
│   │   ├── 2. ext4.md
│   │   ├── 3. xfs.md
│   │   ├── 4. btrfs.md
│   │   └── 5. filesystem comparison.md
│   │
│   ├── 4. mount and umount/
│   │   ├── 1. mount.md
│   │   ├── 2. umount.md
│   │   ├── 3. mount points.md
│   │   └── 4. mounting external drives.md
│   │
│   ├── 5. disk usage/
│   │   ├── 1. df.md
│   │   ├── 2. du.md
│   │   └── 3. disk usage troubleshooting.md
│   │
│   ├── 6. fstab/
│   │   ├── 1. fstab basics.md
│   │   ├── 2. fstab options.md
│   │   └── 3. troubleshooting fstab.md
│   │
│   ├── 7. lvm/
│   │   ├── 1. lvm concepts.md
│   │   ├── 2. physical volumes.md
│   │   ├── 3. volume groups.md
│   │   ├── 4. logical volumes.md
│   │   └── 5. resizing lvm.md
│   │
│   └── 8. raid/
│       ├── 1. raid concepts.md
│       ├── 2. raid 0.md
│       ├── 3. raid 1.md
│       ├── 4. raid 5.md
│       ├── 5. raid 6.md
│       └── 6. raid 10.md
│
├── 11-security/
│   ├── 1. linux security fundamentals.md
│   ├── 2. ssh security/
│   │   ├── 1. ssh hardening.md
│   │   ├── 2. key based authentication.md
│   │   ├── 3. disable root login.md
│   │   └── 4. ssh brute force protection.md
│   ├── 3. permissions security.md
│   ├── 4. users and groups security.md
│   ├── 5. sudo security.md
│   ├── 6. firewall security.md
│   ├── 7. selinux/
│   │   ├── 1. selinux fundamentals.md
│   │   ├── 2. selinux modes.md
│   │   ├── 3. selinux contexts.md
│   │   └── 4. selinux troubleshooting.md
│   ├── 8. apparmor/
│   │   ├── 1. apparmor fundamentals.md
│   │   ├── 2. apparmor profiles.md
│   │   └── 3. apparmor troubleshooting.md
│   ├── 9. logs and auditing/
│   │   ├── 1. linux logs.md
│   │   ├── 2. auth logs.md
│   │   ├── 3. auditd.md
│   │   └── 4. log analysis.md
│   ├── 10. updates and patches.md
│   ├── 11. vulnerability management.md
│   └── 12. security auditing.md
│
├── 12-server-administration/
│   ├── 1. server fundamentals/
│   │   ├── 1. what is a linux server.md
│   │   ├── 2. server roles.md
│   │   └── 3. server hardening.md
│   │
│   ├── 2. web servers/
│   │   ├── 1. web server fundamentals.md
│   │   ├── 2. nginx.md
│   │   ├── 3. nginx configuration.md
│   │   ├── 4. apache.md
│   │   └── 5. virtual hosts.md
│   │
│   ├── 3. ssh servers/
│   │   ├── 1. openssh server.md
│   │   ├── 2. sshd configuration.md
│   │   └── 3. ssh server security.md
│   │
│   ├── 4. dns servers/
│   │   ├── 1. dns server concepts.md
│   │   ├── 2. bind9.md
│   │   └── 3. dns configuration.md
│   │
│   ├── 5. dhcp/
│   │   ├── 1. dhcp concepts.md
│   │   └── 2. dhcp server configuration.md
│   │
│   ├── 6. databases/
│   │   ├── 1. database concepts.md
│   │   ├── 2. mysql.md
│   │   ├── 3. mariadb.md
│   │   └── 4. postgresql.md
│   │
│   ├── 7. backups/
│   │   ├── 1. backup concepts.md
│   │   ├── 2. tar backups.md
│   │   ├── 3. rsync backups.md
│   │   ├── 4. backup strategies.md
│   │   └── 5. restore testing.md
│   │
│   ├── 8. cron and scheduling/
│   │   ├── 1. cron.md
│   │   ├── 2. crontab.md
│   │   ├── 3. systemd timers.md
│   │   └── 4. scheduling best practices.md
│   │
│   └── 9. server monitoring/
│       ├── 1. monitoring concepts.md
│       ├── 2. cpu monitoring.md
│       ├── 3. memory monitoring.md
│       ├── 4. disk monitoring.md
│       ├── 5. network monitoring.md
│       └── 6. log monitoring.md
│
├── 13-advanced-linux/
│   ├── 1. linux kernel/
│   │   ├── 1. kernel architecture.md
│   │   ├── 2. kernel configuration.md
│   │   ├── 3. kernel compilation.md
│   │   └── 4. kernel troubleshooting.md
│   │
│   ├── 2. kernel modules/
│   │   ├── 1. kernel modules.md
│   │   ├── 2. lsmod.md
│   │   ├── 3. modprobe.md
│   │   └── 4. module management.md
│   │
│   ├── 3. boot process/
│   │   ├── 1. bios and uefi.md
│   │   ├── 2. bootloader.md
│   │   ├── 3. kernel loading.md
│   │   ├── 4. initramfs.md
│   │   └── 5. userspace startup.md
│   │
│   ├── 4. grub/
│   │   ├── 1. grub fundamentals.md
│   │   ├── 2. grub configuration.md
│   │   └── 3. grub troubleshooting.md
│   │
│   ├── 5. systemd internals/
│   │   ├── 1. systemd architecture.md
│   │   ├── 2. systemd dependencies.md
│   │   └── 3. systemd boot process.md
│   │
│   ├── 6. networking internals/
│   │   ├── 1. linux networking stack.md
│   │   ├── 2. network namespaces.md
│   │   ├── 3. routing tables.md
│   │   └── 4. network interfaces.md
│   │
│   ├── 7. namespaces/
│   │   ├── 1. namespace concepts.md
│   │   ├── 2. pid namespaces.md
│   │   ├── 3. network namespaces.md
│   │   ├── 4. mount namespaces.md
│   │   └── 5. user namespaces.md
│   │
│   ├── 8. cgroups/
│   │   ├── 1. cgroup concepts.md
│   │   ├── 2. cgroup v1.md
│   │   └── 3. cgroup v2.md
│   │
│   └── 9. performance tuning/
│       ├── 1. performance fundamentals.md
│       ├── 2. cpu performance.md
│       ├── 3. memory performance.md
│       ├── 4. disk performance.md
│       ├── 5. network performance.md
│       └── 6. performance profiling.md
│
└── 14-professional-paths/
    │
    ├── 1-linux-system-administrator/
    │   ├── 1. linux fundamentals.md
    │   ├── 2. command line.md
    │   ├── 3. users and permissions.md
    │   ├── 4. process management.md
    │   ├── 5. networking.md
    │   ├── 6. storage.md
    │   ├── 7. security.md
    │   ├── 8. server administration.md
    │   ├── 9. automation.md
    │   ├── 10. monitoring.md
    │   ├── 11. backups.md
    │   └── 12. troubleshooting.md
    │
    ├── 2-cloud-devops/
    │   ├── 1. linux.md
    │   ├── 2. git.md
    │   ├── 3. docker.md
    │   ├── 4. kubernetes.md
    │   ├── 5. ci cd.md
    │   ├── 6. infrastructure as code.md
    │   ├── 7. terraform.md
    │   ├── 8. cloud fundamentals.md
    │   ├── 9. aws.md
    │   ├── 10. azure.md
    │   ├── 11. google cloud.md
    │   └── 12. devops projects.md
    │
    ├── 3-cybersecurity/
    │   ├── 1. linux internals.md
    │   ├── 2. networking.md
    │   ├── 3. bash.md
    │   ├── 4. python.md
    │   ├── 5. security fundamentals.md
    │   ├── 6. linux security.md
    │   ├── 7. security tools.md
    │   ├── 8. vulnerability assessment.md
    │   ├── 9. penetration testing concepts.md
    │   ├── 10. digital forensics fundamentals.md
    │   └── 11. cybersecurity projects.md
    │
    └── 4-sre/
        ├── 1. linux.md
        ├── 2. automation.md
        ├── 3. scripting.md
        ├── 4. monitoring.md
        ├── 5. observability.md
        ├── 6. reliability engineering.md
        ├── 7. availability.md
        ├── 8. scalability.md
        ├── 9. incident response.md
        ├── 10. disaster recovery.md
        ├── 11. capacity planning.md
        └── 12. sre projects.md


script for this structore
```

