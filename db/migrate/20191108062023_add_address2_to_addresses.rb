class AddAddress2ToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :address2, :string
  end
end
