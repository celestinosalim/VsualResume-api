class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.belongs_to :resume, foreign_key: true
      t.has_many :skill_other
      t.has_many :skill_tool
      t.has_many :skill_interpersonal

      t.timestamps
    end
  end
end
