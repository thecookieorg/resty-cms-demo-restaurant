json.array!(@ordering_links) do |ordering_link|
  json.extract! ordering_link, :id, :url
  json.url ordering_link_url(ordering_link, format: :json)
end
