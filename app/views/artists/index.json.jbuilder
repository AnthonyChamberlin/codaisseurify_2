json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :remote_image_url
end
