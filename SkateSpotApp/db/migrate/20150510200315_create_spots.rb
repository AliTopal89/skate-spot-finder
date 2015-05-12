class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
    	t.string :city
    	t.string :address, :null => false
    	t.string :description
    	t.integer :smoothness
    	t.integer :spot_quality
    	t.integer :human_traffic
    	t.integer :security
    end
  end
end
