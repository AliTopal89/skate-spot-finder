class Post < ActiveRecord::Base
	belongs_to :spot
	belongs_to :user
	validates :comments, :img_url, :video_url, presence: true

end

 # create_table :posts do |t|
 #    	t.string :comments
 #    	t.string :img_url
 #    	t.string :video_url
 #    	t.references :spot