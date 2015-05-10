class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :comments
    	t.string :img_url
    	t.string :video_url
    	t.references :spot
    end
  end
end
