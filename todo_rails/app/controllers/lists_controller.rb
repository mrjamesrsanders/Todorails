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
    list = List.new(list_params)
    list.save
    # redirect '/show/(:id => #{this.id})'
    redirect_to list
  end

private
    # Use callbacks to share common setup or constraints between actions.
    # def set_growl
    #   @growl = Growl.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name)
    end

end

# But if you had something like hello_path then you
# could use redirect_to hello_path(:param1 => 1, :param2 => 2)
