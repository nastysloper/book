class ManuscriptsController < ApplicationController

  def index
    @books = Manuscript.all
  end
  

end