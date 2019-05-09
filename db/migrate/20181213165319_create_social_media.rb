class CreateSocialMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :social_media do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name, default: 'linkedin'
      t.string :link, default: 'https://www.linkedin.com/in/celestinosalim/'
      t.timestamps
    end
  end
end
