class Compra < ActiveRecord::Base
	belongs_to :almuerzo
	belongs_to :user
end
