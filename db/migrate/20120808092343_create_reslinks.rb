class CreateReslinks < ActiveRecord::Migration
  def change
    create_table :reslinks do |t|
      t.string :title
      t.text :content
      t.integer :movie_id

      t.timestamps
    end
  end
end
