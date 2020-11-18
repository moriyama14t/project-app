json.medicine @medicine do |medicine|
    json.medicneName medicine.name
    json.medicneType medicine.type
    json.created_at medicine.created_at
end