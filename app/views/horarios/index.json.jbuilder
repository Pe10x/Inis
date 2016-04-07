json.array!(@horarios) do |horario|
  json.extract! horario, :id, :fecha, :horario
  json.url horario_url(horario, format: :json)
end
