class AddLinkToSocialMedium < ActiveRecord::Migration[5.2]
  def change
    add_column :social_media, :link, :string 
  end
end
