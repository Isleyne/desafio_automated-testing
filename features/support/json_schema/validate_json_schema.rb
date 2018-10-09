Given('JsonSchema: {string}') do |json_schema_name|
  expect(JSON.parse(last_response.body)).to match_response_schema(json_schema_name)
end

Given('ValidateCode: {string}') do |code|
  expect(last_response.code).to eq code.to_i
end
