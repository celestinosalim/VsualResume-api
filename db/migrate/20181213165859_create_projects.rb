class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name, default: 'Name'
      t.string :url, default: 'https://myprojecturl.com'
      t.string :image, default: "https://organicthemes.com/wp-content/uploads/2013/10/website-construction.jpg"
      t.string :description, default: 'Formally written declaration of the project and its idea and context to explain the goals and objectives to be reached'

      t.timestamps
    end
  end
end
