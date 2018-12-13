class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.belongs_to :user, foreign_key: true
      t.has_many :education
      t.has_many :skill
      t.has_many :experience
      t.has_many :project
      t.has_one :profile
      t.has_many :social_media

      t.timestamps
    end
  end
end


