class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name, default: 'Name'
      t.integer :age, default: 26
      t.string :location, default: 'Address'
      t.string :number, default: 'Format: 000-000-0000'
      t.string :profile_picture, default: 'https://articles-images.sftcdn.net/wp-content/uploads/sites/3/2016/01/wallpaper-for-facebook-profile-photo.jpg'
      t.string :headline,  default: 'Able to sit in my chair for extended periods of time without numbness or fatigue.'
      t.string :about_me, default: 'I am awesome, amazing, beautiful and confident I don’t need someone to make me realize it!'
      t.string :background_image, default: 'https://images.all-free-download.com/images/graphicthumb/gorgeous_stage_background_03_hd_pictures_169914.jpg'
      t.string :profile_email, default: "example@gmail.com"
      t.timestamps
    end
  end
end
