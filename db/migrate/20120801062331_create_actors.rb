class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :cname
      t.string :oname

      t.timestamps
    end
  end
end
