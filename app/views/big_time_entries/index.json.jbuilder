json.array!(@big_time_entries) do |big_time_entry|
  json.extract! big_time_entry, :id, :id, :person, :hours, :date, :comment
  json.url big_time_entry_url(big_time_entry, format: :json)
end
