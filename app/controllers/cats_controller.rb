class CatsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(cat_params)
  end

  def index
    @cat = Cat.all
  end

  def cat_params
    params.require(:cat).permit(:name)
  end
end
