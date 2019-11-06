class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.integer :pincode
      t.string :apartment_name
      t.string :landmark
      t.string :street

      t.timestamps
    end
  end
end
