class CreateExpectations < ActiveRecord::Migration[5.2]
  def change
    create_table :expectations do |t|
      t.string :name
      t.references :responsibility, foreign_key: true
      t.timestamps
    end
  end
end
