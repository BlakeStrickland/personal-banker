json.array!(@personal_banks) do |personal_bank|
  json.extract! personal_bank, :id, :amount, :exhanges, :description
  json.url personal_bank_url(personal_bank, format: :json)
end
