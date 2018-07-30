module ApigatewaySdk
  module Types

    # @!attribute [rw] access_key_id
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   @return [String]
    #
    class Credential < Struct.new(
      :access_key_id,
      :secret_access_key)
      include Aws::Structure
    end

    class Empty < Aws::EmptyStructure; end

    # @api private
    #
    class PostCredentialsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] credential
    #   @return [Types::Credential]
    #
    class PostCredentialsResponse < Struct.new(
      :credential)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostCustomersRequest
    #   data as a hash:
    #
    #       {
    #         message_xml: "MessageXml", # required
    #       }
    #
    # @!attribute [rw] message_xml
    #   @return [String]
    #
    class PostCustomersRequest < Struct.new(
      :message_xml)
      include Aws::Structure
    end

    # @!attribute [rw] empty
    #   @return [Types::Empty]
    #
    class PostCustomersResponse < Struct.new(
      :empty)
      include Aws::Structure
    end

  end
end
