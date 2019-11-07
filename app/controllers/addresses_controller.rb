class AddressesController < ApplicationController
  
  before_action :find_address, only: [:show, :destroy]

  def new
    @user = User.find(params[:user_id])
    @address = @user.addresses.build
  end

	def create
    @user = User.find(params[:user_id])
    @address = @user.addresses.build(address_params)
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
      params.require(:address).permit(:country, :state, :city, :pincode, :apartment_name, :landmark, :street)
    end
end