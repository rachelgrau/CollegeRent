class BlogPostsController < ApplicationController
	
	#display all blog posts
	def index

	end 

	def show
	end

	#only enabled if user is an admin
	def new
		@blog_post = BlogPost.new
	end

	#only enabled if user is an admin
	def create
		@message = "nice!"
	end
end