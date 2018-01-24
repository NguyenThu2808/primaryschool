class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :content
      t.string :day
      t.string :month
      t.string :year
      t.string :picture

      t.timestamps
    end
  end
end
