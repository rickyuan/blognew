class CreateRenyuans < ActiveRecord::Migration
  def change
    create_table :renyuans do |t|
      t.integer :movie_id
      t.integer :director_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
