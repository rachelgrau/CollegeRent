class BlogPostsController < ApplicationController
	#display all blog posts
	def index
		if (params[:delete]) then
			blog_post = BlogPost.find_by_id(params[:id])
			blog_post.destroy
		end
		@blog_posts = BlogPost.order(date_time: :desc)
	end 

	def show
	end

	#start a new blog post
	#only enabled if user is an admin
	def new
		@blog_post = BlogPost.new
	end

	#store a new blog post in DB and then display index page w/ all blog posts
	#only enabled if user is an admin
	def create
		bp = BlogPost.new
		bp.title = params[:blog_post_title]
		bp.content = params[:blog_post_content]
		bp.date_time = Time.now.getutc
		bp.save
		redirect_to :action => :index 
	end

	#delete a blog post
	def destroy
		blog_post = BlogPost.find_by_id(params[:id])
		blog_post.destroy
		redirect_to :action => :index
	end
end