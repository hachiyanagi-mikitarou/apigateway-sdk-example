module ApigatewaySdk
  module Plugins

    # APIG Custom Authorizer, generated token will be used by API Gateway
    # to interact with AWS Lambda for authentication
    #
    # More information see: http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html
    class Authorizer < Seahorse::Client::Plugin

      def add_handlers(handlers, config)
        handlers.add(CustomAuthHandler, step: :initialize)
      end

      # @api private
      class CustomAuthHandler < Seahorse::Client::Handler

        def call(context)
          if context.operation['authtype'] == 'custom'
            context.config.authorizer_token = generate_token(context)
          end
          @handler.call(context)
        end

        private

        # TODO
        # Provide your own token generation logic here
        def generate_token(context)
          nil
        end

      end
    end
  end
end
