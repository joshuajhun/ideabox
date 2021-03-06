class IdeasController < ApplicationController
  def index
    @user = current_user
    @ideas = @user.ideas.all
   end

  def new
  @idea = Idea.new
  end

  def create
    @user   = current_user
      @idea = @user.ideas.new(ideas_params)
    if @idea.save
      redirect_to user_path(current_user)
      flash[:new_idea] = "Your Idea Has been Created"
    else
      flash.now[:error] = "You entry is missing some attributes."
      render:new
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(ideas_params)
      redirect_to user_ideas_path(current_user)
      flash[:edit] = "You have edited your idea"
    else
      flash.now[:update] = "You are missing some key attributes"
      render :edit
    end
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy
    redirect_to user_ideas_path(current_user)
  end

  private
  def ideas_params
    params.require(:idea).permit(:title,:body,:id)
  end
end
