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
    @manuscript = Manuscript.new(params[:manuscript])
    @manuscript.save
    redirect_to @manuscript
  end

  def show
    @manuscript = Manuscript.find(params[:id])
  end

end