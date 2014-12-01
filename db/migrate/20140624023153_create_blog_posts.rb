class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
    	t.timestamp :date_time
    	t.timestamps
    end
  end
end
