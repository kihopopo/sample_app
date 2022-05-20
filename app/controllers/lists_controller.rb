class ListsController < ApplicationController
  def new
    
     @list = List.new
  end

  def index
    @lists = List.all  
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end