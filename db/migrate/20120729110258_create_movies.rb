class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :cname
      t.string :oname
      t.string :screenshot
      t.text :review
      t.string :location
      t.date :releasedate

      t.timestamps
    end
  end
end
