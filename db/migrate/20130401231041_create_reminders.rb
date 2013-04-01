class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.datetime :remind_at
      t.timestamps
    end
  end
end
