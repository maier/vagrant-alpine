module VagrantPlugins
  module GuestAlpine
    module Cap
      class NFSClient
        def self.nfs_client_install(machine)
          machine.communicate.tap do |comm|
            comm.sudo('apk update')
            comm.sudo('apk add --upgrade nfs-utils')
            comm.sudo('rc-update add rpc.statd')
            comm.sudo('rc-service rpc.statd start')
          end
        end
      end
    end
  end
end
