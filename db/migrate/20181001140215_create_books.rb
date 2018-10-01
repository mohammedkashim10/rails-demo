class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :published
      t.string :genre

      t.timestamps
    end
  end
end
