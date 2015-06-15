class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :case_id
      t.string :title
      t.integer :estimate
      t.decimal :current
      t.string :person
      t.boolean :resolved?
      t.timestamps
    end
  end
end
