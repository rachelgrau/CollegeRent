class AddBasicStuffToUser < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :credentials, :string
  	add_column :users, :salt, :string
  	add_column :users, :password_digest, :string
  end
end
