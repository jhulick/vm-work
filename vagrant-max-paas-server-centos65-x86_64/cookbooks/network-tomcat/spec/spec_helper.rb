require 'chefspec'
require 'chefspec/berkshelf'

def append_simple_iptables_rule(rule)
  ChefSpec::Matchers::ResourceMatcher.new(:simple_iptables_rule, :append, rule)
end

RSpec.configure do |config|
  config.log_level = :error
  config.platform  = 'redhat'
  config.version   = '6.3'
end
