json.array!(@services) do |service|
  json.extract! service, :id, :user_id, :visibility, :initialDate, :finalDate, :description
  json.url service_url(service, format: :json)
end
