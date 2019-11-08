class Address < ApplicationRecord
	belongs_to :user

	enum city: {indore: 0, bhopal: 1}
	enum country: {India: 0, America: 1}
	enum state: {MP: 0, UP: 1, MH: 2, RJ: 3}	
end
# CITY = [['Indore', '0'], ['Bhopal', '1']]
# 	COUNTRY = [['India', '0'], ['America', '1']]
# 	STATE = [['M.P', '0'], ['U.P', '1'], ['M.H', '2'], ['R.J', '3']]


