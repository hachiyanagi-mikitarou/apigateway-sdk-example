module ApigatewaySdk
  module Plugins

    class APIGEndpoint < Seahorse::Client::Plugin

      def after_initialize(client)
        if client.config.endpoint.nil?
          client.config.endpoint = 'https://9zkyeep9nc.execute-api.ap-northeast-1.amazonaws.com'
        end
      end

    end
  end
end
