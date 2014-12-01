class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
    	t.integer :blog_post_id
    	t.timestamp :date_time
    	t.timestamps
    end
  end
end
