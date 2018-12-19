class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name 
      t.integer :age 
      t.string :location 
      t.string :number
      t.string :profile_picture
      t.string :headline
      t.string :about_me
      t.string :background_image

      t.timestamps
    end
  end
end
