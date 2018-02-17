@flows.each do |flow|
  json.set! flow.id do 
    json.id flow.id
    json.name flow.name
  end
end