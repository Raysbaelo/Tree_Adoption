class AdoptionsController < ApplicationController
  def new
    @tree = Superpower.find(params[:tree_id])
    @adoption = adoption.new
  end

  def create
    @adoption = adoption.new(adoption_params)
    @tree = Tree.find(params[:tree_id])
    @adoption.tree = @tree
    @adoption.user = current_user
    @adoption.save
  end

  def destroy
    @adoption = adoption.find(params[:id])
    @adoption.destroy
    redirect_to trees_path
  end

  private

  def adoption_params
    params.require(:adoption).permit(:user_id, :tree_id, :starts_at, :ends_at)
  end
end
