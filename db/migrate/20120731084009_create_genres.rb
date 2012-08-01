class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :cname
      t.string :ename

      t.timestamps
    end
  end
end
