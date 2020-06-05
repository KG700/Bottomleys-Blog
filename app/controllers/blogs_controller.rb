class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def index
    @blogs = Blog.all
    # @blogs = [
    #   "Opinionated blog about politics",
    #   "Fascinating blog about the environment",
    #   "Interesting blog about animal rights"
    # ]
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

  def show
    @blog = Blog.find(params[:id])
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :description)
    end

end
