class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :user, index: true, foreign_key: true
      t.boolean :visibility
      t.datetime :initialDate
      t.datetime :finaldate
      t.string :description

      t.timestamps null: false
    end
  end
end
