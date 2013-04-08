class Task < ActiveRecord::Base
  attr_accessible :completed_at, :due_at, :name, :completed
  has_many :reminders

  def completed
    self.completed_at?
  end  

  def completed=(completed)
    self.completed_at = (completed == true) ? DateTime.now : nil
  end

  def due_at_s
    if self.due_at.nil?
      return "No Due Date"
    else
      return self.due_at.strftime("%l:%M %p on %b %e, %Y")
    end
  end

  def completed_at_s
    if self.completed_at.nil?
      return "Incomplete"
    else
      return self.completed_at.strftime("%l:%M %p on %b %e, %Y")
    end
  end

end
