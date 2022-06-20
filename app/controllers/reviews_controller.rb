class ReviewsController < ApplicationController
  def new
    @tree = Tree.find(params[:tree_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @tree = Tree.find(params[:Tree_id])
    @review.tree = @tree
    if @review.save
      redirect_to tree_path(@tree)
    else
      render new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to trees_path(@Reviews)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
