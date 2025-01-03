class ListsController < ApplicationController
  def index
    @lists = List.includes(:tasks).all  # Isso carrega todas as listas e suas tarefas associadas
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: 'Lista criada com sucesso!'
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, notice: 'Lista removida com sucesso!'
  end  

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
