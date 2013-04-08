class TasksController < ApplicationController

  respond_to :html, :json

  def index
    @tasks = Task.all
    respond_with @tasks
  end

  def show
    @task = Task.find(params[:id])
    respond_with @task
  end

  def new
    @task = Task.new
    respond_with @task
  end

  def edit
    @task = Task.find(params[:id])
    respond_with @task
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    respond_with @task do |f|
      f.html { redirect_to tasks_path }
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.completed = params[:task][:completed]
    @task.update_attributes(params[:task])
    respond_with @task do |f|
      f.html { redirect_to tasks_path }
    end
  end

  def destroy
    begin
      @task = Task.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render nothing:true, status: :not_found
      return
    end
    @task.destroy
    respond_with @task do |f|
      f.html { redirect_to tasks_path }
    end
  end
end
