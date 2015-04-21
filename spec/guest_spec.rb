require 'vagrant-alpine/guest'

require 'vagrant-alpine/plugin'

require 'vagrant-alpine/cap/change_host_name'
require 'vagrant-alpine/cap/configure_networks'
require 'vagrant-alpine/cap/halt'
require 'vagrant-alpine/cap/rsync'
require 'vagrant-alpine/cap/nfs_client'

describe VagrantPlugins::GuestAlpine::Plugin do
  it 'should be loaded with alpine' do
    expect(described_class.components.guests[:alpine].first).to eq(VagrantPlugins::GuestAlpine::Guest)
  end

  {
    change_host_name: VagrantPlugins::GuestAlpine::Cap::ChangeHostName,
    configure_networks: VagrantPlugins::GuestAlpine::Cap::ConfigureNetworks,
    halt: VagrantPlugins::GuestAlpine::Cap::Halt,
    rsync_installed: VagrantPlugins::GuestAlpine::Cap::RSync,
    rsync_install: VagrantPlugins::GuestAlpine::Cap::RSync,
    nfs_client_install: VagrantPlugins::GuestAlpine::Cap::NFSClient
  }.each do |cap, cls|
    it "should be capable of #{cap} with alpine" do
      expect(described_class.components.guest_capabilities[:alpine][cap])
        .to eq(cls)
    end
  end
end
