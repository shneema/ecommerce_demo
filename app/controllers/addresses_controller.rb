class AddressesController < ApplicationController
  
  before_action :find_address, only: [:show, :destroy]

  def new
    @address = Address.new
  end

	def create 
    @address = Address.new(address_params)
    if @address.save
      redirect_to address_path(@address)       
    else
      render :new
    end  
  end

  def show
  end  

  def destroy
    @address.destroy
  end

  private
    
    def find_address 
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:user_id, :country, :state, :city, :pincode, :address1, :address2)
    end
end
