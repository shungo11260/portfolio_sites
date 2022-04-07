json.board do
  json.partial! "boards/board", board: @board
end
json.lists do
  json.array! @board.lists, partial: "lists/list", as: :list
end