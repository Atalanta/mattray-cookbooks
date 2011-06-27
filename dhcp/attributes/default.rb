
default[:dhcp][:interfaces] = [ "eth0" ]
default[:dhcp][:options] = [
    "option dhcp-client-state code 225 = unsigned integer 16",
    "option dhcp-client-state 0",
    "option dhcp-client-debug code 226 = unsigned integer 16",
    "option dhcp-client-debug 0",
    "option dhcp-client-bmc-address code 227 = ip-address",
    "option dhcp-client-bmc-netmask code 228 = ip-address",
    "option dhcp-client-bmc-router code 229 = ip-address"
]

