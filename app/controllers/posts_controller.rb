class PostsController < ApplicationController
  def index
    @posts = Post.where(:state => 'published')
  end
end
