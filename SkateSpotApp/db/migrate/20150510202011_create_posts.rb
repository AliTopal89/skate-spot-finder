class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.text :comments
    	t.string :img_url
    	t.string :video_url
    	t.references :spot
    end
  end
end
