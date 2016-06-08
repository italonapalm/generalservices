json.array!(@user_knowledges) do |user_knowledge|
  json.extract! user_knowledge, :id, :user_id, :knowledge_id, :date
  json.url user_knowledge_url(user_knowledge, format: :json)
end
