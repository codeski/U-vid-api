class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :embed
      t.string :notes
      t.belongs_to :category, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
