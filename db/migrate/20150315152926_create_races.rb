class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :user
      t.string :name
      t.text :data

      t.timestamps
    end
  end
end
