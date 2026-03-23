class TasksController < ApplicationController
 before_action :set_task, only: [:show, :edit, :update]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save 
      redirect_to @task, notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_date)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def save
  end
end
