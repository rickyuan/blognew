class CrewsMovies < ActiveRecord::Migration
  def change
    create_table :crews_movies, :id => false do |t|
      t.integer :crew_id
      t.integer :movie_id
    end
  end
end
