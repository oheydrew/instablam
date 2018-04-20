class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :user_name
      t.text :avatar_data
      t.string :first_name
      t.string :last_name
      t.string :website
      t.string :bio
      t.decimal :latitude
      t.decimal :longitude
      t.string :country
      t.string :postal_code
      t.string :administrative_area
      t.string :city
      t.string :thoroughfare
      t.string :premise

      t.timestamps
    end
  end
end
