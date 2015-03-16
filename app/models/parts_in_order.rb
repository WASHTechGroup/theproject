class PartsInOrder < ActiveRecord::Base
	belongs_to :order
	belongs_to :part

	before_create :default_order

	private
		def default_order
			self.amount = 1
		end
end
