json.array!(@boards) do |board|
  json.extract! board, :id, :name, :title, :contents
  json.url board_url(board, format: :json)
end
