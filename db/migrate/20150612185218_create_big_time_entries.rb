class CreateBigTimeEntries < ActiveRecord::Migration
  def change
    create_table :big_time_entries do |t|
      t.integer :Fogz
      t.string :FeatureName
      t.string :FBIdAndTitle
      t.datetime :WorkDate
      t.string :Resource #person
      t.decimal :HrsIn
      t.integer :BudgetHrs
      t.text :nt #comment

      t.timestamps
    end
  end
end
