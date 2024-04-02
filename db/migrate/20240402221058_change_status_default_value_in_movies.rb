class ChangeStatusDefaultValueInMovies < ActiveRecord::Migration[7.1]
  def change
    change_column_default :movies, :status, 0
  end
end
