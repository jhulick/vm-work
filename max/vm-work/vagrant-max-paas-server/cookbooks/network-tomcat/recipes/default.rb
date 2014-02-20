#
# Author(s): Jeremy Hulick
#
# Tomcat IP Tables recipe
# default.rb

include_recipe "simple_iptables"

# Reject packets other than those explicitly allowed
simple_iptables_policy "INPUT" do
  policy "DROP"
end

# The following rules define a "system" chain; chains
# are used as a convenient way of grouping rules together,
# for logical organization.

# Allow all traffic on the loopback device
simple_iptables_rule "system" do
  rule "--in-interface lo"
  jump "ACCEPT"
end

# Allow any established connections to continue, even
# if they would be in violation of other rules.
simple_iptables_rule "system" do
  rule "-m conntrack --ctstate ESTABLISHED,RELATED"
  jump "ACCEPT"
end

# Allow SSH
simple_iptables_rule "system" do
  rule "--proto tcp --dport 22"
  jump "ACCEPT"
end

# Allow HTTP, HTTPS
simple_iptables_rule "http" do
  rule [ "--proto tcp --dport 80",
         "--proto tcp --dport 443" ]
  jump "ACCEPT"
end

# Tomcat redirects
simple_iptables_rule "tomcat" do
  table "nat"
  direction "PREROUTING"
  rule [ "--protocol tcp --dport 80 --jump REDIRECT --to-port 8080",
         "--protocol tcp --dport 443 --jump REDIRECT --to-port 8443" ]
  jump false
end