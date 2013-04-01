class Reminder < ActiveRecord::Base
  attr_accessible :remind_at, :task_id
  belongs_to :task
end
