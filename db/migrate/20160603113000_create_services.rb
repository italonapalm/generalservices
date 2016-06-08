class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.boolean :visibility
      t.datetime :initialDate
      t.datetime :finalDate
      t.string :description

      t.timestamps null: false
    end
  end
end
