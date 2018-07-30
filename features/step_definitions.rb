Before("@apigatewaysdk") do
  @service = ApigatewaySdk::Resource.new
  @client = @service.client
end

After("@apigatewaysdk") do
  # shared cleanup logic
end
