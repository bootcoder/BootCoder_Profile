json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :project_description, :project_feature_lang, :project_state
  json.url project_url(project, format: :json)
end
