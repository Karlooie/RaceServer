class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.integer :code
      t.text :description

      t.timestamps
    end
  end
end
