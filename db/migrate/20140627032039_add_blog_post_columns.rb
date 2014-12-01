class AddBlogPostColumns < ActiveRecord::Migration
  def change
  	add_column :blog_posts, :title, :string
  	add_column :blog_posts, :content, :string
  	User.reset_column_information
  	
  end
end
