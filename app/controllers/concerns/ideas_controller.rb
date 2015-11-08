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
    end
  end


  private
  def ideas_params
    params.require(:idea).permit(:title,:body)
  end
end
