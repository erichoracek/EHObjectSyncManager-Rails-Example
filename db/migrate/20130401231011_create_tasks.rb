class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.datetime :completed_at
      t.datetime :due_at
      t.string :name

      t.timestamps
    end
  end
end
