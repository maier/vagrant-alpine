
require 'spec_helper'

describe 'VagrantPlugins::GuestAlpine::Cap::NFSClient' do
  let(:described_class) do
    VagrantPlugins::GuestAlpine::Plugin.components.guest_capabilities[:alpine].get(:nfs_client_install)
  end
  let(:machine) { double('machine') }
  let(:communicator) { VagrantTests::DummyCommunicator::Communicator.new(machine) }

  before do
    allow(machine).to receive(:communicate).and_return(communicator)
  end

  after do
    communicator.verify_expectations!
  end

  it 'should install nfs client' do
    communicator.should_receive(:sudo).with('apk add nfs-utils')
    communicator.should_receive(:sudo).with('rc-update add rpc.statd')
    communicator.should_receive(:sudo).with('rc-service rpc.statd start')

    allow_message_expectations_on_nil
    described_class.nfs_client_install(machine)
  end
end
