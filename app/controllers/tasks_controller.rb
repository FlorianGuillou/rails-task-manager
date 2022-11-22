class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to '/tasks'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    show
  end

  def update
    show
    @task.update(task_params)
    redirect_to '/tasks'
  end

  def destroy
    show
    @task.destroy
    redirect_to '/tasks', status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
