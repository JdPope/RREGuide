class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :date_started
      t.date :date_completed
      t.references :expectation, foreign_key: true

      t.timestamps
    end
  end
end
