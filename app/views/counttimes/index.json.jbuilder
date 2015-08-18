json.array!(@counttimes) do |counttime|
  json.extract! counttime, :id, :sec
  json.url counttime_url(counttime, format: :json)
end
