class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.build(task_params)

    if @task.name.blank?  # Verifica se o nome está vazio
      redirect_to list_path(@list)  # Redireciona de volta para a lista sem fazer nada
    elsif @task.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to list_path(@task.list)
  end

  private

  def task_params
    params.require(:task).permit(:name, :completed, :description, :due_date)
  end
end
