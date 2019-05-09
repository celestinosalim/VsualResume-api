class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :template, default: 1


      t.timestamps
    end
  end
end


