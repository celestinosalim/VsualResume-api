class CreateSocialMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :social_media do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name, default: 'MySocialMedia'
      t.string :logo, default: 'https://www.freelogodesign.org/Content/img/logo-ex-7.png'

      t.timestamps
    end
  end
end
