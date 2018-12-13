class CreateOthers < ActiveRecord::Migration[5.2]
  def change
    create_table :others do |t|
      t.belongs_to :skill, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
