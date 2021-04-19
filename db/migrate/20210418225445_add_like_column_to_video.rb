class AddLikeColumnToVideo < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :likes, :integer, default: 0
  end
end
