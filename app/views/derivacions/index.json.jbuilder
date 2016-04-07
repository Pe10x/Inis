json.array!(@derivacions) do |derivacion|
  json.extract! derivacion, :id, :observacion
  json.url derivacion_url(derivacion, format: :json)
end
