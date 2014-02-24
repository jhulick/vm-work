execute "Development Tools" do
  user "root"
  command 'yum -y groupinstall "Development Tools"'
  action :run
  creates "/usr/bin/make"
end

