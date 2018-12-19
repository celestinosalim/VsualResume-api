class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.belongs_to :skill, foreign_key: true
      t.string :name, default: 'GitHub'

      t.timestamps
    end
  end
end
