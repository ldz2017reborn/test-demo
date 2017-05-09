class CreateKindergartens < ActiveRecord::Migration[5.0]
  def change
    create_table :kindergartens do |t|
      t.string :title
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
