json.array!(@mainroads) do |mainroad|
  json.extract! mainroad, :id, :Kdo, :Kam, :Co, :Cena
  json.url mainroad_url(mainroad, format: :json)
end
