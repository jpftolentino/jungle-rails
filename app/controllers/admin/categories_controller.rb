class Admin::CategoriesController < ApplicationController

  before_filter :authenticate 

  def index
    @categories = Category.all.order(name: :asc)
  end

  # GET render /category/new
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new 
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end

end
