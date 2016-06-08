class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      # requester = user_id
      t.integer :requester, index: true, foreign_key: true

      t.references :service, index: true, foreign_key: true
      t.datetime :dateRequest
      t.string :problemDescription

      t.timestamps null: false
    end
  end
end
