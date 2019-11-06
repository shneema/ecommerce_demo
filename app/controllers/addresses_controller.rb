class AddressesController < ApplicationController
  def new
    @address = Address.new
  end

	def create
    @user = User.find(params[:user_id])
    @address = @user.addresses.create(address_params)
    redirect_to article_path(@article)
  end

  def destroy
    @address = Address.find(params[:id])
    # @address = @comment.article_id 
    @address.destroy
    # redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:address).permit(:user_id, :country, :state, :city, :pincode, :apartment_name, :landmark, :street )
    end
end

