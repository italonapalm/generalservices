class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :description
      t.references :profession, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
