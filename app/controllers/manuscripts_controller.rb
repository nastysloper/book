class ManuscriptsController < ApplicationController

  def index
    @manuscript = Manuscript.all
  end

  def edit
    @manuscript = Manuscript.find(params[:id])
  end

  def destroy
    @manuscript = Manuscript.find(params[:id])
    @manuscript.destroy

    redirect_to manuscripts_path
  end

  def update
    @manuscript = Manuscript.find(params[:id])
    if @manuscript.update_attributes(params[:manuscript])
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
    if @manuscript.save
      redirect_to @manuscript
    else
      render 'new'
    end
  end

  def show
    @manuscript = Manuscript.find(params[:id])
  end

end