class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :image_data
      t.text :caption
      t.references :like, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
