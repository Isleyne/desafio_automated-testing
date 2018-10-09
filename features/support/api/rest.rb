module API

 class Rest

  def self.post(url:, payload: {}, headers: {})
    begin
      response = RestClient.post url, payload, headers
    rescue RestClient::ExceptionWithResponse => e
      response = e.response
    end
    puts "\n::POST Request=> URL:#{url}\n Payload:#{payload} \n
    Headers:#{headers} \n\n POST Response:\n Code:#{response.code}\n
    Body:#{response.body}\n"
    response
  end
end
end
