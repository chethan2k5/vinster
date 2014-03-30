class PostsController < ApplicationController
	def index
		#everything here will get run when someone goes to post
		@posts = Post.all
		#@body_class = "posts"
	end

	def new
		@post = Post.new
	end

	def create
		#Post.create(:title => 'omg', :description => 'lol')
		Post.create(post_params)
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title,:description)
	end
end