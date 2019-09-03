json.array! @parties do |party|
  json.extract! party, :name, :location
  json.guests do
    json.array! @parties do |party|
      party.guests.each do |guest|
        json.extract! guest, :name
      end
    end
  end
end
