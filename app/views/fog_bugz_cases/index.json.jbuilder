json.array!(@fog_bugz_cases) do |fog_bugz_case|
  json.extract! fog_bugz_case, :id, :id, :title, :estimate, :current, :person, :resolved?, :percentage, :active?
  json.url fog_bugz_case_url(fog_bugz_case, format: :json)
end
