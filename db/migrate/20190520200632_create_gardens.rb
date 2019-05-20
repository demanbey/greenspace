class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.text :description
      t.integer :capacity
      t.string :location
      t.string :size
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
