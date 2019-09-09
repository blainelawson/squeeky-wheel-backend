class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :desc
      t.datetime :date
      t.timestamps
    end
  end
end
