class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.list = List.find(params[:list_id])
    @review.save
    redirect_to @review.list
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :list_id)
  end
end
