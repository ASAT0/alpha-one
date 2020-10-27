class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def index
    @posts = Post.all
  end
end
