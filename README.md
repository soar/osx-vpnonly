# osx-vpnonly

## Original idea

I found [this amazing article](https://jomo.tv/security/pf-prevent-traffic-bypassing-vpn) written by user **jomo** and just made some scripts for self-usage.

## Usage

First of all, edit files `pf.tables/vpnonly-ipv4-hosts-allowed.txt` and `pf.tables/vpnonly-ipv6-hosts-allowed.txt` - and add there addresses of your VPN servers.

Now simply run install script:

```bash
sudo ./install.sh
```

To disable filtering execute:

```bash
sudo ./disable.sh
```

To enable again:

```bash
sudo ./enable.sh
```
