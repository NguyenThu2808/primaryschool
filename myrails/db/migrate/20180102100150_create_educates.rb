class CreateEducates < ActiveRecord::Migration[5.1]
  def change
    create_table :educates do |t|
      t.string :name
      t.text :content
      t.string :picture

      t.timestamps
    end
  end
end
