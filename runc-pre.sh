# The following commands are not possible due to android using cgroups to isolate apps 
#sudo mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup
#sudo mkdir -p /sys/fs/cgroup/devices
#sudo mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices

# Instead we shift our approach to use an alternate cgroup2 directory in /data, While not as optimal as remounting /sys/fs/cgroup as a tmpfs. The memory constraints of the S9+ and android systems make it a nessacity to avoid disk-swapping and random application slowdowns. This maintains application performance albeit a bit lower.
sudo mkdir -p /data/local/cgroup2
sudo mount -t cgroup2 -o rw,nosuid,nodev,noexec,relatime cgroup2_root /data/local/cgroup2
