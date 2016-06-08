class CreateUserKnowledges < ActiveRecord::Migration
  def change
    create_table :user_knowledges do |t|
      t.references :user, index: true, foreign_key: true
      t.references :knowledge, index: true, foreign_key: true
      t.datetime :criationDate

      t.timestamps null: false
    end
  end
end
