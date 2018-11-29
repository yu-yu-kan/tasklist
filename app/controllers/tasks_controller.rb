class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    
    if @task.save
      flash[:success] = "タスクを登録しました。"
      redirect_to tasks_url
    else
      flash.now[:danger] = "タスクの登録に失敗しました。"
      render "new"
    end 
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    
    if @task.update(tasks_params)
      flash[:success] = "タスクを変更しました。"
      redirect_to tasks_url
    else
      flash.now[:danger] = "タスクの変更に失敗しました。"
      render "edit"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    
    @task.destroy
    flash[:success] = "タスクを削除しました。"
    redirect_to tasks_url
  end
  
  private
  
  def tasks_params
    params.require(:task).permit(:todo)
  end 
end
