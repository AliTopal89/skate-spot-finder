class Spot < ActiveRecord::Base
	# nice validations!
	has_many :posts
	belongs_to :user
	validates :city, :address, :description, presence:true

	validates :spot_quality, :numericality => {
		:greater_than_or_equal_to => 0,
		:less_than_or_equal_to => 5
	}

	validates :smoothness, :numericality => {
		:greater_than_or_equal_to => 0,
		:less_than_or_equal_to => 5
	}

	validates :human_traffic, :numericality => {
		:greater_than_or_equal_to => 0,
		:less_than_or_equal_to => 5
	}

	validates :security, :numericality => {
		:greater_than_or_equal_to => 0,
		:less_than_or_equal_to => 5
	}

end
# 		t.string :city
#     	t.string :address, :null => false
#     	t.string :description
#     	t.integer :smoothness
#     	t.integer :spot_quality
#     	t.integer :human_traffic
#     	t.integer :security
