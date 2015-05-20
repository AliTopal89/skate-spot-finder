class Post < ActiveRecord::Base
	belongs_to :spot
	belongs_to :user
	# validates  :comments, presence: true

end

# get rid of comments like this for production
 # create_table :posts do |t|
 #    	t.string :comments
 #    	t.string :img_url
 #    	t.string :video_url
 #    	t.references :spot
