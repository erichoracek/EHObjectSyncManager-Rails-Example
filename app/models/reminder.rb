class Reminder < ActiveRecord::Base
  attr_accessible :remind_at, :task_id
  belongs_to :task

  def remind_at_s
    if self.remind_at.nil?
      return "No Remind At"
    else
      return self.remind_at.strftime("%l:%M %p on %b %e, %Y")
    end
  end
end
