class TasksController < ApplicationController

  before_action :set_ask, only: [:show, :edit, :update, :destroy]

  def index
    @task = Task.all
  end

  def show

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@tasks)

  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@tasks)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_ask
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name)
  end

end
