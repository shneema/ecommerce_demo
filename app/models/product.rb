class Product < ApplicationRecord
	belongs_to :category

	STATUS = [['available','0'],['not available','1']]
end
