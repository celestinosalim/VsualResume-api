class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
