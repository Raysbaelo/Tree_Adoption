class TreesController < ApplicationController
  before_action :set_tree, only: [:update, :edit, :show, :destroy ]

  def index
    @trees = Tree.all
  end

  def show
    # @adoption = Adoption.new
    # @adoption_dates = @tree.adoptions.map do |adoption|
    #   {
    #     from: adoption.starts_at,
    #     to: adoption.ends_at
    #   }
    # @review = Review.new
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user

    if @tree.save

      redirect_to tree_path(@tree)

    else
      render :new
    end
  end

  def edit
  end

  def update
    @tree.update(tree_params)
    redirect_to tree_path(@tree)
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to trees_path(@trees)
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :description, :price_per_year, :quantity_per_year, :fruit)
  end
end
