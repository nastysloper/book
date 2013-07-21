class ManuscriptsController < ApplicationController

  def index
    @books = Manuscript.all
  end

  def edit
    render index
  end

  def remove
    
  end

  def update
    @manuscript = Manuscript.find(params[:id])
    if @manuscript.update(params[:manuscript])
      redirect_to(@manuscript)
    else
      render :edit
    end
  end

  def new
    @manuscript = Manuscript.new
  end
  
  def create
    #render text: params[:manuscript].inspect
    @manuscript = Manuscript.new(post_params)
    @post.save
    redirect_to @post
  end

  def show
    #@manuscript = 
  end

  private
    def post_params
      params.require(:manuscript).permit(:title, :author)
    end

end