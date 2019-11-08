class Product < ApplicationRecord
	belongs_to :category
  enum status: { available: 0, notavailable: 1 }	
end


# STATUS = [['available','0'],['not available','1']]