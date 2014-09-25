json.array!(@agences) do |agence|
  json.extract! agence, :id, :nom, :principal_groupe_id, :sous_groupe_id
  json.url agence_url(agence, format: :json)
end
