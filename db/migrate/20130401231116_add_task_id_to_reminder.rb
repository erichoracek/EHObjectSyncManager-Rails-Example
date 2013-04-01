class AddTaskIdToReminder < ActiveRecord::Migration
  def change
    add_column :reminders, :task_id, :integer
  end
end
