#!/usr/bin/env bash
#
# create_linux_structure.sh
#
# Scaffolds the full "LINUX/" learning curriculum directory tree
# (folders + empty .md files) in the current working directory.
#
# Usage:
#   chmod +x create_linux_structure.sh
#   ./create_linux_structure.sh
#
set -euo pipefail

FILES=$(cat <<'EOF'
LINUX/1-fundamentals/1. what is linux.md
LINUX/1-fundamentals/2. history of linux.md
LINUX/1-fundamentals/3. linux philosophy.md
LINUX/1-fundamentals/4. linux distributions/1. what is a linux distribution.md
LINUX/1-fundamentals/4. linux distributions/2. ubuntu.md
LINUX/1-fundamentals/4. linux distributions/3. debian.md
LINUX/1-fundamentals/4. linux distributions/4. fedora.md
LINUX/1-fundamentals/4. linux distributions/5. red hat enterprise linux.md
LINUX/1-fundamentals/4. linux distributions/6. arch linux.md
LINUX/1-fundamentals/4. linux distributions/7. alpine linux.md
LINUX/1-fundamentals/4. linux distributions/8. choosing a distribution.md
LINUX/1-fundamentals/5. kernel vs operating system.md
LINUX/1-fundamentals/6. desktop vs server.md
LINUX/1-fundamentals/7. linux architecture.md
LINUX/1-fundamentals/8. open source and free software.md
LINUX/1-fundamentals/9. linux licensing.md
LINUX/1-fundamentals/10. installing linux.md
LINUX/1-fundamentals/11. virtual machines.md
LINUX/1-fundamentals/12. dual boot.md
LINUX/1-fundamentals/13. first steps after installation.md
LINUX/2-command-line-terminal/1. terminal basics/1. what is a terminal.md
LINUX/2-command-line-terminal/1. terminal basics/2. shell vs terminal.md
LINUX/2-command-line-terminal/1. terminal basics/3. command structure.md
LINUX/2-command-line-terminal/1. terminal basics/4. command options and arguments.md
LINUX/2-command-line-terminal/1. terminal basics/5. command history.md
LINUX/2-command-line-terminal/2. navigation/1. pwd.md
LINUX/2-command-line-terminal/2. navigation/2. ls.md
LINUX/2-command-line-terminal/2. navigation/3. cd.md
LINUX/2-command-line-terminal/2. navigation/4. tree.md
LINUX/2-command-line-terminal/2. navigation/5. absolute paths.md
LINUX/2-command-line-terminal/2. navigation/6. relative paths.md
LINUX/2-command-line-terminal/2. navigation/7. special paths.md
LINUX/2-command-line-terminal/3. files and directories/1. touch.md
LINUX/2-command-line-terminal/3. files and directories/2. mkdir.md
LINUX/2-command-line-terminal/3. files and directories/3. cp.md
LINUX/2-command-line-terminal/3. files and directories/4. mv.md
LINUX/2-command-line-terminal/3. files and directories/5. rm.md
LINUX/2-command-line-terminal/3. files and directories/6. rmdir.md
LINUX/2-command-line-terminal/3. files and directories/7. wildcards.md
LINUX/2-command-line-terminal/3. files and directories/8. hidden files.md
LINUX/2-command-line-terminal/4. reading files/1. cat.md
LINUX/2-command-line-terminal/4. reading files/2. less.md
LINUX/2-command-line-terminal/4. reading files/3. more.md
LINUX/2-command-line-terminal/4. reading files/4. head.md
LINUX/2-command-line-terminal/4. reading files/5. tail.md
LINUX/2-command-line-terminal/4. reading files/6. wc.md
LINUX/2-command-line-terminal/4. reading files/7. file.md
LINUX/2-command-line-terminal/5. searching/1. find.md
LINUX/2-command-line-terminal/5. searching/2. grep.md
LINUX/2-command-line-terminal/5. searching/3. locate.md
LINUX/2-command-line-terminal/5. searching/4. which.md
LINUX/2-command-line-terminal/5. searching/5. whereis.md
LINUX/2-command-line-terminal/5. searching/6. type.md
LINUX/2-command-line-terminal/6. file information/1. stat.md
LINUX/2-command-line-terminal/6. file information/2. du.md
LINUX/2-command-line-terminal/6. file information/3. df.md
LINUX/2-command-line-terminal/6. file information/4. ls options.md
LINUX/2-command-line-terminal/7. help/1. man.md
LINUX/2-command-line-terminal/7. help/2. info.md
LINUX/2-command-line-terminal/7. help/3. --help.md
LINUX/2-command-line-terminal/7. help/4. apropos.md
LINUX/2-command-line-terminal/7. help/5. help command.md
LINUX/2-command-line-terminal/8. terminal productivity/1. tab completion.md
LINUX/2-command-line-terminal/8. terminal productivity/2. command history.md
LINUX/2-command-line-terminal/8. terminal productivity/3. aliases.md
LINUX/2-command-line-terminal/8. terminal productivity/4. keyboard shortcuts.md
LINUX/2-command-line-terminal/8. terminal productivity/5. command chaining.md
LINUX/3-linux-filesystem/1. filesystem hierarchy.md
LINUX/3-linux-filesystem/2. root filesystem.md
LINUX/3-linux-filesystem/3. home.md
LINUX/3-linux-filesystem/4. etc.md
LINUX/3-linux-filesystem/5. var.md
LINUX/3-linux-filesystem/6. usr.md
LINUX/3-linux-filesystem/7. bin.md
LINUX/3-linux-filesystem/8. sbin.md
LINUX/3-linux-filesystem/9. lib.md
LINUX/3-linux-filesystem/10. lib64.md
LINUX/3-linux-filesystem/11. boot.md
LINUX/3-linux-filesystem/12. dev.md
LINUX/3-linux-filesystem/13. proc.md
LINUX/3-linux-filesystem/14. sys.md
LINUX/3-linux-filesystem/15. run.md
LINUX/3-linux-filesystem/16. tmp.md
LINUX/3-linux-filesystem/17. opt.md
LINUX/3-linux-filesystem/18. srv.md
LINUX/3-linux-filesystem/19. mnt.md
LINUX/3-linux-filesystem/20. media.md
LINUX/3-linux-filesystem/21. lost and found.md
LINUX/3-linux-filesystem/22. filesystem best practices.md
LINUX/4-users-and-permissions/1. users/1. linux users.md
LINUX/4-users-and-permissions/1. users/2. user ids.md
LINUX/4-users-and-permissions/1. users/3. creating users.md
LINUX/4-users-and-permissions/1. users/4. modifying users.md
LINUX/4-users-and-permissions/1. users/5. deleting users.md
LINUX/4-users-and-permissions/1. users/6. user configuration files.md
LINUX/4-users-and-permissions/2. groups/1. linux groups.md
LINUX/4-users-and-permissions/2. groups/2. group ids.md
LINUX/4-users-and-permissions/2. groups/3. creating groups.md
LINUX/4-users-and-permissions/2. groups/4. modifying groups.md
LINUX/4-users-and-permissions/2. groups/5. deleting groups.md
LINUX/4-users-and-permissions/3. root/1. root user.md
LINUX/4-users-and-permissions/3. root/2. root shell.md
LINUX/4-users-and-permissions/3. root/3. dangers of root.md
LINUX/4-users-and-permissions/4. permissions/1. file permissions.md
LINUX/4-users-and-permissions/4. permissions/2. read permission.md
LINUX/4-users-and-permissions/4. permissions/3. write permission.md
LINUX/4-users-and-permissions/4. permissions/4. execute permission.md
LINUX/4-users-and-permissions/4. permissions/5. numeric permissions.md
LINUX/4-users-and-permissions/4. permissions/6. symbolic permissions.md
LINUX/4-users-and-permissions/4. permissions/7. special permissions.md
LINUX/4-users-and-permissions/5. chmod/1. chmod basics.md
LINUX/4-users-and-permissions/5. chmod/2. chmod numeric mode.md
LINUX/4-users-and-permissions/5. chmod/3. chmod symbolic mode.md
LINUX/4-users-and-permissions/6. ownership/1. chown.md
LINUX/4-users-and-permissions/6. ownership/2. chgrp.md
LINUX/4-users-and-permissions/6. ownership/3. ownership concepts.md
LINUX/4-users-and-permissions/7. sudo/1. sudo basics.md
LINUX/4-users-and-permissions/7. sudo/2. sudo configuration.md
LINUX/4-users-and-permissions/7. sudo/3. sudoers.md
LINUX/4-users-and-permissions/7. sudo/4. least privilege.md
LINUX/5-processes-and-system/1. processes/1. what is a process.md
LINUX/5-processes-and-system/1. processes/2. process ids.md
LINUX/5-processes-and-system/1. processes/3. parent and child processes.md
LINUX/5-processes-and-system/1. processes/4. foreground processes.md
LINUX/5-processes-and-system/1. processes/5. background processes.md
LINUX/5-processes-and-system/2. ps/1. ps basics.md
LINUX/5-processes-and-system/2. ps/2. ps aux.md
LINUX/5-processes-and-system/2. ps/3. process filtering.md
LINUX/5-processes-and-system/3. top and htop/1. top.md
LINUX/5-processes-and-system/3. top and htop/2. htop.md
LINUX/5-processes-and-system/3. top and htop/3. monitoring cpu and memory.md
LINUX/5-processes-and-system/4. signals and kill/1. linux signals.md
LINUX/5-processes-and-system/4. signals and kill/2. kill.md
LINUX/5-processes-and-system/4. signals and kill/3. killall.md
LINUX/5-processes-and-system/4. signals and kill/4. pkill.md
LINUX/5-processes-and-system/5. jobs/1. jobs.md
LINUX/5-processes-and-system/5. jobs/2. bg.md
LINUX/5-processes-and-system/5. jobs/3. fg.md
LINUX/5-processes-and-system/5. jobs/4. nohup.md
LINUX/5-processes-and-system/6. systemd/1. what is systemd.md
LINUX/5-processes-and-system/6. systemd/2. systemd units.md
LINUX/5-processes-and-system/6. systemd/3. services.md
LINUX/5-processes-and-system/6. systemd/4. targets.md
LINUX/5-processes-and-system/7. systemctl/1. systemctl status.md
LINUX/5-processes-and-system/7. systemctl/2. systemctl start.md
LINUX/5-processes-and-system/7. systemctl/3. systemctl stop.md
LINUX/5-processes-and-system/7. systemctl/4. systemctl restart.md
LINUX/5-processes-and-system/7. systemctl/5. systemctl enable.md
LINUX/5-processes-and-system/7. systemctl/6. systemctl disable.md
LINUX/5-processes-and-system/8. journalctl/1. journalctl basics.md
LINUX/5-processes-and-system/8. journalctl/2. viewing service logs.md
LINUX/5-processes-and-system/8. journalctl/3. filtering logs.md
LINUX/5-processes-and-system/9. system monitoring/1. cpu monitoring.md
LINUX/5-processes-and-system/9. system monitoring/2. memory monitoring.md
LINUX/5-processes-and-system/9. system monitoring/3. disk monitoring.md
LINUX/5-processes-and-system/9. system monitoring/4. load average.md
LINUX/5-processes-and-system/9. system monitoring/5. uptime.md
LINUX/6-text-processing-and-shell/1. pipes/1. pipe basics.md
LINUX/6-text-processing-and-shell/1. pipes/2. chaining commands.md
LINUX/6-text-processing-and-shell/2. redirection/1. stdout.md
LINUX/6-text-processing-and-shell/2. redirection/2. stdin.md
LINUX/6-text-processing-and-shell/2. redirection/3. stderr.md
LINUX/6-text-processing-and-shell/2. redirection/4. redirection.md
LINUX/6-text-processing-and-shell/2. redirection/5. append redirection.md
LINUX/6-text-processing-and-shell/3. grep/1. grep basics.md
LINUX/6-text-processing-and-shell/3. grep/2. grep options.md
LINUX/6-text-processing-and-shell/3. grep/3. advanced grep.md
LINUX/6-text-processing-and-shell/4. cut.md
LINUX/6-text-processing-and-shell/5. sort.md
LINUX/6-text-processing-and-shell/6. uniq.md
LINUX/6-text-processing-and-shell/7. tr.md
LINUX/6-text-processing-and-shell/8. tee.md
LINUX/6-text-processing-and-shell/9. xargs.md
LINUX/6-text-processing-and-shell/10. awk/1. awk basics.md
LINUX/6-text-processing-and-shell/10. awk/2. awk fields.md
LINUX/6-text-processing-and-shell/10. awk/3. awk patterns.md
LINUX/6-text-processing-and-shell/10. awk/4. awk scripting.md
LINUX/6-text-processing-and-shell/11. sed/1. sed basics.md
LINUX/6-text-processing-and-shell/11. sed/2. sed substitutions.md
LINUX/6-text-processing-and-shell/11. sed/3. advanced sed.md
LINUX/6-text-processing-and-shell/12. regular expressions/1. regex basics.md
LINUX/6-text-processing-and-shell/12. regular expressions/2. character classes.md
LINUX/6-text-processing-and-shell/12. regular expressions/3. anchors.md
LINUX/6-text-processing-and-shell/12. regular expressions/4. quantifiers.md
LINUX/6-text-processing-and-shell/12. regular expressions/5. practical regex.md
LINUX/7-package-management/1. packages and repositories.md
LINUX/7-package-management/2. apt/1. apt basics.md
LINUX/7-package-management/2. apt/2. apt install.md
LINUX/7-package-management/2. apt/3. apt update.md
LINUX/7-package-management/2. apt/4. apt upgrade.md
LINUX/7-package-management/2. apt/5. apt remove.md
LINUX/7-package-management/2. apt/6. apt search.md
LINUX/7-package-management/3. dnf/1. dnf basics.md
LINUX/7-package-management/3. dnf/2. installing packages.md
LINUX/7-package-management/3. dnf/3. updating packages.md
LINUX/7-package-management/3. dnf/4. removing packages.md
LINUX/7-package-management/4. pacman/1. pacman basics.md
LINUX/7-package-management/4. pacman/2. installing packages.md
LINUX/7-package-management/4. pacman/3. updating packages.md
LINUX/7-package-management/4. pacman/4. removing packages.md
LINUX/7-package-management/5. repositories.md
LINUX/7-package-management/6. package files.md
LINUX/7-package-management/7. compiling from source.md
LINUX/8-networking/1. networking fundamentals/1. ip addresses.md
LINUX/8-networking/1. networking fundamentals/2. ipv4.md
LINUX/8-networking/1. networking fundamentals/3. ipv6.md
LINUX/8-networking/1. networking fundamentals/4. subnetting.md
LINUX/8-networking/1. networking fundamentals/5. mac addresses.md
LINUX/8-networking/1. networking fundamentals/6. gateways.md
LINUX/8-networking/1. networking fundamentals/7. routing.md
LINUX/8-networking/2. dns/1. what is dns.md
LINUX/8-networking/2. dns/2. dns records.md
LINUX/8-networking/2. dns/3. dns resolution.md
LINUX/8-networking/2. dns/4. resolv.conf.md
LINUX/8-networking/2. dns/5. dig and nslookup.md
LINUX/8-networking/3. ports and protocols/1. ports.md
LINUX/8-networking/3. ports and protocols/2. tcp.md
LINUX/8-networking/3. ports and protocols/3. udp.md
LINUX/8-networking/3. ports and protocols/4. tcp vs udp.md
LINUX/8-networking/3. ports and protocols/5. common ports.md
LINUX/8-networking/4. network commands/1. ping.md
LINUX/8-networking/4. network commands/2. ip.md
LINUX/8-networking/4. network commands/3. ss.md
LINUX/8-networking/4. network commands/4. traceroute.md
LINUX/8-networking/4. network commands/5. curl.md
LINUX/8-networking/4. network commands/6. wget.md
LINUX/8-networking/4. network commands/7. netstat.md
LINUX/8-networking/5. ssh/1. what is ssh.md
LINUX/8-networking/5. ssh/2. ssh client.md
LINUX/8-networking/5. ssh/3. ssh keys.md
LINUX/8-networking/5. ssh/4. ssh config.md
LINUX/8-networking/5. ssh/5. ssh authentication.md
LINUX/8-networking/5. ssh/6. ssh agent.md
LINUX/8-networking/5. ssh/7. ssh troubleshooting.md
LINUX/8-networking/6. scp and file transfer/1. scp.md
LINUX/8-networking/6. scp and file transfer/2. sftp.md
LINUX/8-networking/6. scp and file transfer/3. rsync.md
LINUX/8-networking/7. firewall/1. firewall concepts.md
LINUX/8-networking/7. firewall/2. ufw.md
LINUX/8-networking/7. firewall/3. firewalld.md
LINUX/8-networking/7. firewall/4. nftables.md
LINUX/8-networking/7. firewall/5. firewall troubleshooting.md
LINUX/9-bash-scripting/1. bash fundamentals/1. what is bash.md
LINUX/9-bash-scripting/1. bash fundamentals/2. bash vs shell.md
LINUX/9-bash-scripting/1. bash fundamentals/3. shebang.md
LINUX/9-bash-scripting/1. bash fundamentals/4. script permissions.md
LINUX/9-bash-scripting/1. bash fundamentals/5. running scripts.md
LINUX/9-bash-scripting/2. variables/1. variables.md
LINUX/9-bash-scripting/2. variables/2. strings.md
LINUX/9-bash-scripting/2. variables/3. numbers.md
LINUX/9-bash-scripting/2. variables/4. arrays.md
LINUX/9-bash-scripting/3. arguments/1. positional arguments.md
LINUX/9-bash-scripting/3. arguments/2. command line arguments.md
LINUX/9-bash-scripting/3. arguments/3. getopts.md
LINUX/9-bash-scripting/3. arguments/4. argument validation.md
LINUX/9-bash-scripting/4. conditions/1. if statements.md
LINUX/9-bash-scripting/4. conditions/2. test command.md
LINUX/9-bash-scripting/4. conditions/3. file tests.md
LINUX/9-bash-scripting/4. conditions/4. string tests.md
LINUX/9-bash-scripting/4. conditions/5. case statements.md
LINUX/9-bash-scripting/5. loops/1. for loops.md
LINUX/9-bash-scripting/5. loops/2. while loops.md
LINUX/9-bash-scripting/5. loops/3. until loops.md
LINUX/9-bash-scripting/5. loops/4. loop control.md
LINUX/9-bash-scripting/6. functions/1. functions.md
LINUX/9-bash-scripting/6. functions/2. function arguments.md
LINUX/9-bash-scripting/6. functions/3. return values.md
LINUX/9-bash-scripting/7. exit codes.md
LINUX/9-bash-scripting/8. environment variables.md
LINUX/9-bash-scripting/9. command substitution.md
LINUX/9-bash-scripting/10. quoting.md
LINUX/9-bash-scripting/11. input and output.md
LINUX/9-bash-scripting/12. error handling.md
LINUX/9-bash-scripting/13. debugging bash scripts.md
LINUX/9-bash-scripting/14. automation projects.md
LINUX/10-storage/1. storage fundamentals/1. disks.md
LINUX/10-storage/1. storage fundamentals/2. hard drives.md
LINUX/10-storage/1. storage fundamentals/3. ssds.md
LINUX/10-storage/1. storage fundamentals/4. storage terminology.md
LINUX/10-storage/2. partitions/1. partitions.md
LINUX/10-storage/2. partitions/2. mbr.md
LINUX/10-storage/2. partitions/3. gpt.md
LINUX/10-storage/2. partitions/4. fdisk.md
LINUX/10-storage/2. partitions/5. parted.md
LINUX/10-storage/3. filesystems/1. what is a filesystem.md
LINUX/10-storage/3. filesystems/2. ext4.md
LINUX/10-storage/3. filesystems/3. xfs.md
LINUX/10-storage/3. filesystems/4. btrfs.md
LINUX/10-storage/3. filesystems/5. filesystem comparison.md
LINUX/10-storage/4. mount and umount/1. mount.md
LINUX/10-storage/4. mount and umount/2. umount.md
LINUX/10-storage/4. mount and umount/3. mount points.md
LINUX/10-storage/4. mount and umount/4. mounting external drives.md
LINUX/10-storage/5. disk usage/1. df.md
LINUX/10-storage/5. disk usage/2. du.md
LINUX/10-storage/5. disk usage/3. disk usage troubleshooting.md
LINUX/10-storage/6. fstab/1. fstab basics.md
LINUX/10-storage/6. fstab/2. fstab options.md
LINUX/10-storage/6. fstab/3. troubleshooting fstab.md
LINUX/10-storage/7. lvm/1. lvm concepts.md
LINUX/10-storage/7. lvm/2. physical volumes.md
LINUX/10-storage/7. lvm/3. volume groups.md
LINUX/10-storage/7. lvm/4. logical volumes.md
LINUX/10-storage/7. lvm/5. resizing lvm.md
LINUX/10-storage/8. raid/1. raid concepts.md
LINUX/10-storage/8. raid/2. raid 0.md
LINUX/10-storage/8. raid/3. raid 1.md
LINUX/10-storage/8. raid/4. raid 5.md
LINUX/10-storage/8. raid/5. raid 6.md
LINUX/10-storage/8. raid/6. raid 10.md
LINUX/11-security/1. linux security fundamentals.md
LINUX/11-security/2. ssh security/1. ssh hardening.md
LINUX/11-security/2. ssh security/2. key based authentication.md
LINUX/11-security/2. ssh security/3. disable root login.md
LINUX/11-security/2. ssh security/4. ssh brute force protection.md
LINUX/11-security/3. permissions security.md
LINUX/11-security/4. users and groups security.md
LINUX/11-security/5. sudo security.md
LINUX/11-security/6. firewall security.md
LINUX/11-security/7. selinux/1. selinux fundamentals.md
LINUX/11-security/7. selinux/2. selinux modes.md
LINUX/11-security/7. selinux/3. selinux contexts.md
LINUX/11-security/7. selinux/4. selinux troubleshooting.md
LINUX/11-security/8. apparmor/1. apparmor fundamentals.md
LINUX/11-security/8. apparmor/2. apparmor profiles.md
LINUX/11-security/8. apparmor/3. apparmor troubleshooting.md
LINUX/11-security/9. logs and auditing/1. linux logs.md
LINUX/11-security/9. logs and auditing/2. auth logs.md
LINUX/11-security/9. logs and auditing/3. auditd.md
LINUX/11-security/9. logs and auditing/4. log analysis.md
LINUX/11-security/10. updates and patches.md
LINUX/11-security/11. vulnerability management.md
LINUX/11-security/12. security auditing.md
LINUX/12-server-administration/1. server fundamentals/1. what is a linux server.md
LINUX/12-server-administration/1. server fundamentals/2. server roles.md
LINUX/12-server-administration/1. server fundamentals/3. server hardening.md
LINUX/12-server-administration/2. web servers/1. web server fundamentals.md
LINUX/12-server-administration/2. web servers/2. nginx.md
LINUX/12-server-administration/2. web servers/3. nginx configuration.md
LINUX/12-server-administration/2. web servers/4. apache.md
LINUX/12-server-administration/2. web servers/5. virtual hosts.md
LINUX/12-server-administration/3. ssh servers/1. openssh server.md
LINUX/12-server-administration/3. ssh servers/2. sshd configuration.md
LINUX/12-server-administration/3. ssh servers/3. ssh server security.md
LINUX/12-server-administration/4. dns servers/1. dns server concepts.md
LINUX/12-server-administration/4. dns servers/2. bind9.md
LINUX/12-server-administration/4. dns servers/3. dns configuration.md
LINUX/12-server-administration/5. dhcp/1. dhcp concepts.md
LINUX/12-server-administration/5. dhcp/2. dhcp server configuration.md
LINUX/12-server-administration/6. databases/1. database concepts.md
LINUX/12-server-administration/6. databases/2. mysql.md
LINUX/12-server-administration/6. databases/3. mariadb.md
LINUX/12-server-administration/6. databases/4. postgresql.md
LINUX/12-server-administration/7. backups/1. backup concepts.md
LINUX/12-server-administration/7. backups/2. tar backups.md
LINUX/12-server-administration/7. backups/3. rsync backups.md
LINUX/12-server-administration/7. backups/4. backup strategies.md
LINUX/12-server-administration/7. backups/5. restore testing.md
LINUX/12-server-administration/8. cron and scheduling/1. cron.md
LINUX/12-server-administration/8. cron and scheduling/2. crontab.md
LINUX/12-server-administration/8. cron and scheduling/3. systemd timers.md
LINUX/12-server-administration/8. cron and scheduling/4. scheduling best practices.md
LINUX/12-server-administration/9. server monitoring/1. monitoring concepts.md
LINUX/12-server-administration/9. server monitoring/2. cpu monitoring.md
LINUX/12-server-administration/9. server monitoring/3. memory monitoring.md
LINUX/12-server-administration/9. server monitoring/4. disk monitoring.md
LINUX/12-server-administration/9. server monitoring/5. network monitoring.md
LINUX/12-server-administration/9. server monitoring/6. log monitoring.md
LINUX/13-advanced-linux/1. linux kernel/1. kernel architecture.md
LINUX/13-advanced-linux/1. linux kernel/2. kernel configuration.md
LINUX/13-advanced-linux/1. linux kernel/3. kernel compilation.md
LINUX/13-advanced-linux/1. linux kernel/4. kernel troubleshooting.md
LINUX/13-advanced-linux/2. kernel modules/1. kernel modules.md
LINUX/13-advanced-linux/2. kernel modules/2. lsmod.md
LINUX/13-advanced-linux/2. kernel modules/3. modprobe.md
LINUX/13-advanced-linux/2. kernel modules/4. module management.md
LINUX/13-advanced-linux/3. boot process/1. bios and uefi.md
LINUX/13-advanced-linux/3. boot process/2. bootloader.md
LINUX/13-advanced-linux/3. boot process/3. kernel loading.md
LINUX/13-advanced-linux/3. boot process/4. initramfs.md
LINUX/13-advanced-linux/3. boot process/5. userspace startup.md
LINUX/13-advanced-linux/4. grub/1. grub fundamentals.md
LINUX/13-advanced-linux/4. grub/2. grub configuration.md
LINUX/13-advanced-linux/4. grub/3. grub troubleshooting.md
LINUX/13-advanced-linux/5. systemd internals/1. systemd architecture.md
LINUX/13-advanced-linux/5. systemd internals/2. systemd dependencies.md
LINUX/13-advanced-linux/5. systemd internals/3. systemd boot process.md
LINUX/13-advanced-linux/6. networking internals/1. linux networking stack.md
LINUX/13-advanced-linux/6. networking internals/2. network namespaces.md
LINUX/13-advanced-linux/6. networking internals/3. routing tables.md
LINUX/13-advanced-linux/6. networking internals/4. network interfaces.md
LINUX/13-advanced-linux/7. namespaces/1. namespace concepts.md
LINUX/13-advanced-linux/7. namespaces/2. pid namespaces.md
LINUX/13-advanced-linux/7. namespaces/3. network namespaces.md
LINUX/13-advanced-linux/7. namespaces/4. mount namespaces.md
LINUX/13-advanced-linux/7. namespaces/5. user namespaces.md
LINUX/13-advanced-linux/8. cgroups/1. cgroup concepts.md
LINUX/13-advanced-linux/8. cgroups/2. cgroup v1.md
LINUX/13-advanced-linux/8. cgroups/3. cgroup v2.md
LINUX/13-advanced-linux/9. performance tuning/1. performance fundamentals.md
LINUX/13-advanced-linux/9. performance tuning/2. cpu performance.md
LINUX/13-advanced-linux/9. performance tuning/3. memory performance.md
LINUX/13-advanced-linux/9. performance tuning/4. disk performance.md
LINUX/13-advanced-linux/9. performance tuning/5. network performance.md
LINUX/13-advanced-linux/9. performance tuning/6. performance profiling.md
LINUX/14-professional-paths/1-linux-system-administrator/1. linux fundamentals.md
LINUX/14-professional-paths/1-linux-system-administrator/2. command line.md
LINUX/14-professional-paths/1-linux-system-administrator/3. users and permissions.md
LINUX/14-professional-paths/1-linux-system-administrator/4. process management.md
LINUX/14-professional-paths/1-linux-system-administrator/5. networking.md
LINUX/14-professional-paths/1-linux-system-administrator/6. storage.md
LINUX/14-professional-paths/1-linux-system-administrator/7. security.md
LINUX/14-professional-paths/1-linux-system-administrator/8. server administration.md
LINUX/14-professional-paths/1-linux-system-administrator/9. automation.md
LINUX/14-professional-paths/1-linux-system-administrator/10. monitoring.md
LINUX/14-professional-paths/1-linux-system-administrator/11. backups.md
LINUX/14-professional-paths/1-linux-system-administrator/12. troubleshooting.md
LINUX/14-professional-paths/2-cloud-devops/1. linux.md
LINUX/14-professional-paths/2-cloud-devops/2. git.md
LINUX/14-professional-paths/2-cloud-devops/3. docker.md
LINUX/14-professional-paths/2-cloud-devops/4. kubernetes.md
LINUX/14-professional-paths/2-cloud-devops/5. ci cd.md
LINUX/14-professional-paths/2-cloud-devops/6. infrastructure as code.md
LINUX/14-professional-paths/2-cloud-devops/7. terraform.md
LINUX/14-professional-paths/2-cloud-devops/8. cloud fundamentals.md
LINUX/14-professional-paths/2-cloud-devops/9. aws.md
LINUX/14-professional-paths/2-cloud-devops/10. azure.md
LINUX/14-professional-paths/2-cloud-devops/11. google cloud.md
LINUX/14-professional-paths/2-cloud-devops/12. devops projects.md
LINUX/14-professional-paths/3-cybersecurity/1. linux internals.md
LINUX/14-professional-paths/3-cybersecurity/2. networking.md
LINUX/14-professional-paths/3-cybersecurity/3. bash.md
LINUX/14-professional-paths/3-cybersecurity/4. python.md
LINUX/14-professional-paths/3-cybersecurity/5. security fundamentals.md
LINUX/14-professional-paths/3-cybersecurity/6. linux security.md
LINUX/14-professional-paths/3-cybersecurity/7. security tools.md
LINUX/14-professional-paths/3-cybersecurity/8. vulnerability assessment.md
LINUX/14-professional-paths/3-cybersecurity/9. penetration testing concepts.md
LINUX/14-professional-paths/3-cybersecurity/10. digital forensics fundamentals.md
LINUX/14-professional-paths/3-cybersecurity/11. cybersecurity projects.md
LINUX/14-professional-paths/4-sre/1. linux.md
LINUX/14-professional-paths/4-sre/2. automation.md
LINUX/14-professional-paths/4-sre/3. scripting.md
LINUX/14-professional-paths/4-sre/4. monitoring.md
LINUX/14-professional-paths/4-sre/5. observability.md
LINUX/14-professional-paths/4-sre/6. reliability engineering.md
LINUX/14-professional-paths/4-sre/7. availability.md
LINUX/14-professional-paths/4-sre/8. scalability.md
LINUX/14-professional-paths/4-sre/9. incident response.md
LINUX/14-professional-paths/4-sre/10. disaster recovery.md
LINUX/14-professional-paths/4-sre/11. capacity planning.md
LINUX/14-professional-paths/4-sre/12. sre projects.md
EOF
)

count=0
while IFS= read -r filepath; do
    [ -z "$filepath" ] && continue
    dir=$(dirname -- "$filepath")
    mkdir -p -- "$dir"
    touch -- "$filepath"
    count=$((count + 1))
done <<< "$FILES"

echo "Done. Created $count files across the LINUX/ directory tree."
