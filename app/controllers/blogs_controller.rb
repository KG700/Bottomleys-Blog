class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def index
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "Blog was successfully created"
      redirect_to blog_path(@blog)
    else
      render 'new'
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :description)
    end

end
