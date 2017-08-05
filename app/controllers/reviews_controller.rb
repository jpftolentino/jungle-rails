class ReviewsController < ApplicationController

  before_filter :log_in

  def create
    user_id = current_user.id
    product_id = params.require(:product_id) 
    @review = Review.new(
      product_id: product_id,
      user_id: user_id,
      description: params.require(:review)['description'],
      rating: params.require(:review)['rating']
    )


    if @review.save
      redirect_to controller: "products", action: "show", id: product_id, notice: 'Comment Posted!'
    else
      raise 'You messed up!'
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to @product, notice: 'Review Deleted!'
  end

  protected
  def log_in
     if current_user = nil
      redirect_to "/login", notice: 'Comment Posted!'
     end
  end

end
