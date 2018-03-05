class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to todos_path
  end

  def index
    @todo = Todo.all
  end

  def todo_params
    params.require(:todo).permit(:tasks, :finished)
  end
end
