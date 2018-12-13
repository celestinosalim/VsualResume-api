class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.belongs_to :resume, foreign_key: true
      t.timestamps
    end
  end
end
