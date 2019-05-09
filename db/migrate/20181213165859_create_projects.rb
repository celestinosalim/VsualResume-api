class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name, default: 'Vsual Resume'
      t.string :url, default: 'https://www.vsualresume.com'
      t.string :image, default: "https://g.foolcdn.com/editorial/images/494454/resume_gettyimages-587892248.jpg"
      t.string :description, default: 'Ruby on Rails, React JS & Redux, JWT'

      t.timestamps
    end
  end
end
