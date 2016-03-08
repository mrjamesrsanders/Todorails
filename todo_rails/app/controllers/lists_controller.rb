class ListsController < ApplicationController
  def index
      @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
      @list = List.find(params[:id])
  end

  def create
    list = List.new(params["list"])
    list.save
    redirect '/show/(:id => #{this.id})'
  end
end

# But if you had something like hello_path then you
# could use redirect_to hello_path(:param1 => 1, :param2 => 2)
