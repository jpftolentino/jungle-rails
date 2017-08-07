class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    @reviews = Review.all
  end

  def show
    @product = Product.find params[:id]
    @users = User.all
    @review = Review.new
  end

end
