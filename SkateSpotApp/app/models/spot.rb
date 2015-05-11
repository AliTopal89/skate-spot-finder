class Spot < ActiveRecord::Base
	has_many :posts
	belongs_to :user
	validates :city, :address, :description, presence:true
end
# 		t.string :city
#     	t.string :address, :null => false
#     	t.string :description
#     	t.integer :smoothness
#     	t.integer :spot
#     	t.integer :human_traffic
#     	t.integer :security