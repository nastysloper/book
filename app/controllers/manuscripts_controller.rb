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
    render text: params[:manuscript].inspect
  end

  def show
    @manuscript = 
    @manuscript.title = params[:title]
    @manuscript.author = params[:author]
  end

end