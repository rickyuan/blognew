class AddAssociationToCrews < ActiveRecord::Migration
  def change
    add_column :crews, :movie_id, :integer
    add_column :crews, :director_id, :integer
    add_column :crews, :actor_id, :integer
  end
end
