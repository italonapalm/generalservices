json.array!(@professions) do |profession|
  json.extract! profession, :id, :description
  json.url profession_url(profession, format: :json)
end
