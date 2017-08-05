class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    # @review = @product.review.order(created_at: :desc)
    @users = User.all
    @review = Review.new
  end

end
