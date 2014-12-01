class BlogPostsController < ApplicationController
	#display all blog posts
	def index
	#	if (params[:id] != nil) then
	#		flash.notice = "hi"
	#	end
		if (params[:delete]) then
			blog_post = BlogPost.find_by_id(params[:id])
			blog_post.destroy
		end
		@blog_posts = BlogPost.order(date_time: :desc)
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
		bp = BlogPost.new
		bp.title = params[:blog_post_title]
		bp.content = params[:blog_post_content]
		bp.date_time = Time.now.getutc
		bp.save
		redirect_to :action => :index 
	end

	def destroy
		blog_post = BlogPost.find_by_id(params[:id])
		blog_post.destroy
		redirect_to :action => :index

		@hey = "hi"
	end
end