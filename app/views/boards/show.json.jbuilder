json.board do
  json.partial! "boards/board", board: @board
end
json.lists do
  json.array! @board.lists, partial: "lists/list", as: :list
end
json.tasks do
  json.array! @board.tasks, partial: "tasks/task", as: :task
end