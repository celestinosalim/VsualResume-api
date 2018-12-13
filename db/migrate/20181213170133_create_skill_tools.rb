class CreateSkillTools < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_tools do |t|
      t.belongs_to :skill, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
