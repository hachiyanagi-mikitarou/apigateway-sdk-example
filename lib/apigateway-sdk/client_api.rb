module ApigatewaySdk
  # @api private
  module ClientApi

    include Seahorse::Model

    Credential = Shapes::StructureShape.new(name: 'Credential')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    MessageXml = Shapes::StringShape.new(name: 'MessageXml')
    PostCredentialsRequest = Shapes::StructureShape.new(name: 'PostCredentialsRequest')
    PostCredentialsResponse = Shapes::StructureShape.new(name: 'PostCredentialsResponse')
    PostCustomersRequest = Shapes::StructureShape.new(name: 'PostCustomersRequest')
    PostCustomersResponse = Shapes::StructureShape.new(name: 'PostCustomersResponse')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    double = Shapes::FloatShape.new(name: 'double')
    integer = Shapes::IntegerShape.new(name: 'integer')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    timestampIso8601 = Shapes::TimestampShape.new(name: 'timestampIso8601', timestampFormat: "iso8601")
    timestampUnix = Shapes::TimestampShape.new(name: 'timestampUnix', timestampFormat: "iso8601")

    Credential.add_member(:access_key_id, Shapes::ShapeRef.new(shape: string, location_name: "accessKeyId"))
    Credential.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: string, location_name: "secretAccessKey"))
    Credential.struct_class = Types::Credential

    Empty.struct_class = Types::Empty

    PostCredentialsRequest.struct_class = Types::PostCredentialsRequest

    PostCredentialsResponse.add_member(:credential, Shapes::ShapeRef.new(shape: Credential, required: true, location_name: "Credential"))
    PostCredentialsResponse.struct_class = Types::PostCredentialsResponse
    PostCredentialsResponse[:payload] = :credential
    PostCredentialsResponse[:payload_member] = PostCredentialsResponse.member(:credential)

    PostCustomersRequest.add_member(:message_xml, Shapes::ShapeRef.new(shape: MessageXml, required: true, location_name: "MessageXml"))
    PostCustomersRequest.struct_class = Types::PostCustomersRequest
    PostCustomersRequest[:payload] = :message_xml
    PostCustomersRequest[:payload_member] = PostCustomersRequest.member(:message_xml)

    PostCustomersResponse.add_member(:empty, Shapes::ShapeRef.new(shape: Empty, required: true, location_name: "Empty"))
    PostCustomersResponse.struct_class = Types::PostCustomersResponse
    PostCustomersResponse[:payload] = :empty
    PostCustomersResponse[:payload_member] = PostCustomersResponse.member(:empty)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "0.0.1"

      api.metadata = {
        "endpointPrefix" => "9zkyeep9nc",
        "protocol" => "api-gateway",
        "serviceFullName" => "corona-api",
        "signatureVersion" => "v4",
        "signingName" => "execute-api",
      }

      api.add_operation(:post_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/v2/credentials"
        o.input = Shapes::ShapeRef.new(shape: PostCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: PostCredentialsResponse)
      end)

      api.add_operation(:post_customers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostCustomers"
        o.http_method = "POST"
        o.http_request_uri = "/v2/customers"
        o.input = Shapes::ShapeRef.new(shape: PostCustomersRequest)
        o.output = Shapes::ShapeRef.new(shape: PostCustomersResponse)
      end)
    end

  end
end
