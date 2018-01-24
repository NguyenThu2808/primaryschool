class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.text :content
      t.string :keyword
      t.boolean :hot
      t.integer :category_id

      t.timestamps
    end
  end
end
