class TodosController < ApplicationController
  def index
  end

  def new
    @todo = Todo.new
  end

  def show
  end

  def create
    todo = Todo.new(todo_params)
    todo.save
    # binding.pry
    redirect_to todo.list
  end

private
    # Use callbacks to share common setup or constraints between actions.
    # def set_growl
    #   @growl = Growl.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:item, :list_id)
    end

end

