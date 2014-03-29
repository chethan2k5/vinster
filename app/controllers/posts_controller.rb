class PostsController < ApplicationController
	def index
		#everything here will get run when someone goes to post
		@posts = Post.all
		#@body_class = "posts"
	end
end
