class PagesController < ApplicationController
  attr_accessor :cats, :todos, :users

  def home
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
  end



end
