json.array! @todos do |todo|
  json.id todo.id
  json.text todo.text
  json.isCompleted todo.isCompleted
end
