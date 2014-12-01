class CreateBlogCommentComments < ActiveRecord::Migration
  def change
    create_table :blog_comment_comments do |t|
		t.integer :blog_comment_id
		t.timestamp :date_time
    	t.timestamps
    end
  end
end
