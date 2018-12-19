class CreateInterpersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :interpersonals do |t|
      t.belongs_to :skill, foreign_key: true
      t.string :name, default: 'Teamwork'

      t.timestamps
    end
  end
end
