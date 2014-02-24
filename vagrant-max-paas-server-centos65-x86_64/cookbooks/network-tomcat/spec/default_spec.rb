require 'spec_helper'

describe 'network-tomcat::default' do

  let (:chef_run) {
    ChefSpec::Runner.new().converge(described_recipe)
  }

  it 'includes simple_iptables' do
    expect(chef_run).to include_recipe('simple_iptables')
  end

  [
    "--proto tcp --dport 8080"
  ].each do |r|
      it "appends '#{r}' rule" do
        expect(chef_run).to append_simple_iptables_rule(r)
      end
    end
end
