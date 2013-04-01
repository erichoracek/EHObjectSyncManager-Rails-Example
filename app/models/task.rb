class Task < ActiveRecord::Base
  attr_accessible :completed_at, :due_at, :name
  has_many :reminders
end
