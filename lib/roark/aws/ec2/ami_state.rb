module Roark
  module Aws
    module Ec2
      class AmiState
        def initialize(connection)
          @connection = connection
        end

        def state(name)
          @connection.images.select { |i| i.name == name }.first
        end
      end
    end
  end
end
