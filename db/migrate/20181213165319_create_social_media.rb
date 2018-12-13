class CreateSocialMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :social_media do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name
      t.string :logo

      t.timestamps
    end
  end
end
