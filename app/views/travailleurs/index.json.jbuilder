json.array!(@travailleurs) do |travailleur|
  json.extract! travailleur, :id, :nom, :principal_groupe_id, :sous_groupe_id, :agence_id, :user_id
  json.url travailleur_url(travailleur, format: :json)
end
