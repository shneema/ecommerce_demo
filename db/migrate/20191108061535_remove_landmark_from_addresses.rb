class RemoveLandmarkFromAddresses < ActiveRecord::Migration[6.0]
  def change

    remove_column :addresses, :landmark, :string
  end
end
