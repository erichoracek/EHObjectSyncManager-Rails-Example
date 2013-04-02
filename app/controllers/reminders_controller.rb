class RemindersController < ApplicationController

  respond_to :html, :json

  def index
    @reminders = Reminder.all
    respond_with @reminders
  end

  def show
    @reminder = Reminder.find(params[:id])
    respond_with @reminder
  end

  def new
    @reminder = Reminder.new
    respond_with @reminder
  end

  def edit
    @reminder = Reminder.find(params[:id])
    respond_with @reminder
  end

  def create
    @reminder = Reminder.new(params[:reminder])
    @reminder.save
    respond_with @reminder
  end

  def update
    @reminder = Reminder.find(params[:id])
    @reminder.update_attributes(params[:reminder])
    respond_with @reminder
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy
    respond_with @reminder
  end
end
