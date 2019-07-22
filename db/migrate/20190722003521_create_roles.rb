class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.float :percentage
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
