json.array!(@blogs) do |blog|
  json.extract! blog, :id, :user_id, :content, :title, :foto_primera, :foto_segunda, :foto_tercera
  json.url blog_url(blog, format: :json)
end
