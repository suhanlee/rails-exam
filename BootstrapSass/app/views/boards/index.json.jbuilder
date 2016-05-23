json.array!(@boards) do |board|
  json.extract! board, :id, :name, :subject, :contents
  json.url board_url(board, format: :json)
end
