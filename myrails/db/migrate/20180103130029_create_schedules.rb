class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
