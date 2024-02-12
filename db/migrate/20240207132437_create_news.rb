class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.string :reporter
      t.string :category
      t.text :body
      t.integer :tags_id, index: true, foreign_key: true
      t.timestamps
    end
  end
end
