json.array!(@requests) do |request|
  json.extract! request, :id, :user_id, :service_id, :dateRequest, :problemDescription
  json.url request_url(request, format: :json)
end
