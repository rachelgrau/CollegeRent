class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :name
    	t.string :file_name
    	t.timestamp :date_time
        t.timestamps
    end
  end
end
