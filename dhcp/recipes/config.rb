include_recipe "utils"

#search for registered pxe_server nodes
servers = search(:node, 'recipes:pxe_dust\:\:server') || []
if servers.length > 0
  tftp_server = servers[0].ipaddress
end

dhcp_subnet "172.16.144.0" do
  action :add
  netmask "255.255.255.0"
  broadcast "172.16.144.255"
  routers ['172.16.144.1']
  options ['range 172.16.144.14 172.16.144.17',
           "next-server #{tftp_server}",
           'filename "pxelinux.0"']
end
