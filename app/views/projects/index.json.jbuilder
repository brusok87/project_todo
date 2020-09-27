#json.array! @projects, partial: "projects/project", as: :project
json.array! @projects do |project|
  json.id project.id
  json.title project.title

  #json.partial! 'todos/todo', collection: @todos, as: :todo

end
