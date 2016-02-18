class CategoriesController < ApplicationController
  layout 'application'
  def new
    #render 'new'
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:category])
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  def update

  end

  def destroy

  end

  def show

  end

  private
  def category_params
    params.require(:category).permit(:category)
  end
end
