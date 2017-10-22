json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :remote_image_url
end

json.array!(@artist.songs) do |song|
  json.extract! song,
  :id,
  :title,
  :created_at,
  :updated_at
end
