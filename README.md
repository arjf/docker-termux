# Docker on Termux Native

This project aims to run docker natively on *rooted* android devices using termux.


### Requirements
    - Kernel patched with support for 
        CONFIG_BRIDGE
        CONFIG_VETH
        CONFIG_OVERLAY
        CONFIG_OVERLAY_FS
        CONFIG_CGROUPS
    These are the most important flags, for more features and the entire list use this [check-config.sh](https://raw.githubusercontent.com/moby/moby/master/contrib/check-config.sh).
    
    - Root via KernelSU/Magisk/APatch.

    - Termux installed with root enabled for the app in your root providers companion app.

### Usage

Clone the repo, and use the included install.sh
The script will *override* your existing daemon.json as its meant for installing for scratch.

Execute run.sh, this will create and mount a cgroupsv2 fs at /data/local/cgroup2 which is required for runc to function.
Also the script will start dockerd using nohup and keep its logs in dockerd-stdout-log and dockerd-stderr.log.


