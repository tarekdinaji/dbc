class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.text :details
      t.integer :news_id, index: true, foreign_key: true
      t.timestamps
    end
  end
end
