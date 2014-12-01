class LoadData < ActiveRecord::Migration
  def up
  	#Create initial categories
  	down
  	bath = Category.new(:name => "Bath", :file_name => "bath1.jpg", :date_time => DateTime.now)
  	bath.save(:validate => false)
  	bedding = Category.new(:name => "Bed", :file_name => "bedding1.jpg", :date_time => DateTime.now)
  	bedding.save(:validate => false)
  	desk = Category.new(:name => "Desk", :file_name => "desk1.jpg", :date_time => DateTime.now)
  	desk.save(:validate => false)
  	kitchen = Category.new(:name => "Kitchen", :file_name => "kitchen1.jpg", :date_time => DateTime.now)
  	kitchen.save(:validate => false)
  end

  def down
  	Category.delete_all
  end
end
