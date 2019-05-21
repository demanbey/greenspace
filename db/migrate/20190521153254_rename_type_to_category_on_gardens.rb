class RenameTypeToCategoryOnGardens < ActiveRecord::Migration[5.2]
  def change
    rename_column :gardens, :type, :category
  end
end
