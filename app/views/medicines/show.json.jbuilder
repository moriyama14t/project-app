json.medicine do
    json.medicneName @medicine.name
    json.medicneType @medicine.type
    json.created_at @medicine.created_at
end