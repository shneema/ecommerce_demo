class RemoveStreetFromAddresses < ActiveRecord::Migration[6.0]
  def change

    remove_column :addresses, :street, :string
  end
end
