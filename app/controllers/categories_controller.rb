class CategoriesController < ApplicationController
  
  before_action :find_category, only: [:show, :edit, :update, :destroy]

	def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end
   
  def show
  end
  
	def create
		@category = Category.new(category_param)
		if @category.save
		  redirect_to category_path(@category)
		else
		  render :new
		end
	end
  
  def edit
  end

  def update
	  if @category.update_attributes(category_param)
	    redirect_to category_path(@category)
	  else
	    render :edit
	  end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end 
   
  private

  def category_param
    params.require(:category).permit(:name,:description)
  end

  def find_category
    @category = Category.find(params[:id])
  end

end
