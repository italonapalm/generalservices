json.array!(@knowledges) do |knowledge|
  json.extract! knowledge, :id, :description, :profession_id
  json.url knowledge_url(knowledge, format: :json)
end
