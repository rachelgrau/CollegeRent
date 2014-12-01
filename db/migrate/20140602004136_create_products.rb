class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.integer :category_id
    	t.timestamp :date_time
    	t.timestamps
    end
  end
end
