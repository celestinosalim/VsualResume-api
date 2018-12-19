class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :start_date, default: "mm/dd/yyyy"
      t.string :end_date, default: "mm/dd/yyyy"
      t.string :location, default: "Address, City, State, Zip"
      t.string :degree, default: "Degree"
      t.string :university, default: "Institution"
      t.string :description, default: "Studied a variety of ..."

      t.timestamps
    end
  end
end
