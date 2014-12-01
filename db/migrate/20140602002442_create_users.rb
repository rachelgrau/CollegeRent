class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.timestamp :date_time
    	t.timestamps
    end
  end
end
