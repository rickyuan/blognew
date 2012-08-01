class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :cname
      t.string :oname

      t.timestamps
    end
  end
end
