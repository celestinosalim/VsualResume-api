class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.string :location
      t.string :degree
      t.string :university
      t.string :description

      t.timestamps
    end
  end
end
