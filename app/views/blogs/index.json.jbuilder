json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :body, :category, :visible
  json.url blog_url(blog, format: :json)
end
