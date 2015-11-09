class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new

  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    end
  end

  def show
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end
end
