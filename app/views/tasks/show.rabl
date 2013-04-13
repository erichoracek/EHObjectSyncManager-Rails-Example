object @task
attributes :id, :completed_at, :due_at, :name

child :reminders, if: lambda { |task| task.reminders.count != 0 } do
  extends "reminders/show"
end
