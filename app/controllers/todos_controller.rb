class TodosController < ApplicationController
  
  def index
    @todos = Todo.all
  end
  
  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: { errors: @todo.errors.full_messagers }
    end
  end

  def create
    @todo = Todo.create(check_params)
    if @todo.valid?
      render json: @todo
    else
      render json: { errors: @todo.errors.full_messages }
    end
  end

  private
  
    def check_params  
      params.permit(:text, :project_id, :isCompleted)
    end

    def todo_params
      params.require(:todo).permit(:isCompleted)
    end
end
