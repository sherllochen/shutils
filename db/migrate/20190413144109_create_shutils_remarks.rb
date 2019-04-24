class CreateShutilsRemarks < ActiveRecord::Migration[5.2]
  def change
    create_table :shutils_remarks do |t|
      t.text :body, null: false
      t.integer :remarkable_id, null: false
      t.string :remarkable_type, null: false

      t.timestamps
    end
    add_index :shutils_remarks, :remarkable_id
    add_index :shutils_remarks, :remarkable_type
  end
end
