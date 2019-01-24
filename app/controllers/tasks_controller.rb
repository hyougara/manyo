class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @search = Task.ransack(params[:q])
    @result = @search.result
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: 'タスクを作成しました'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: '更新しました'
      else
      render :edit 
      end
    end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: '削除しました'
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params 
      params.require(:task).permit(:name, :content, :status)
    end
end
