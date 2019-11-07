class ProductsController < ApplicationController
  
  before_action :find_product, only: [:show, :destroy]

  def new
    @product = Product.new
  end

	def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)       
    else
      render :new
    end  
  end

  def show
  end  

  def destroy
    @product.destroy
  end

  private
    
    def find_product 
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:category_id, :name, :price, :status, :quantity, :image)
    end	
end
