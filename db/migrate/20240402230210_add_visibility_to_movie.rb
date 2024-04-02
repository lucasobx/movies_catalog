class AddVisibilityToMovie < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :visibility, :integer, default: 0
  end
end
