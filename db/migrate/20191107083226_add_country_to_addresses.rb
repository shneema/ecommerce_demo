class AddCountryToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :country, :integer
  end
end
