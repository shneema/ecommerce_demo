class RemoveApartmentNameFromAddresses < ActiveRecord::Migration[6.0]
  def change

    remove_column :addresses, :apartment_name, :string
  end
end
