class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :cname
      t.string :oname

      t.timestamps
    end
  end
end
