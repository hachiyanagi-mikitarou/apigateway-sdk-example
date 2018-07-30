require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'apigateway-sdk/types'
require_relative 'apigateway-sdk/client_api'
require_relative 'apigateway-sdk/client'
require_relative 'apigateway-sdk/errors'
require_relative 'apigateway-sdk/resource'
require_relative 'apigateway-sdk/customizations'

# This module provides support for corona-api. This module is available in the
# `apigateway-sdk` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from corona-api all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue ApigatewaySdk::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module ApigatewaySdk

  GEM_VERSION = '0.0.3'

end
