class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :start_date, default: "mm/dd/yyyy"
      t.string :end_date, default: "mm/dd/yyyy"
      t.string :location, default: "Address, City, State, Zip"
      t.string :role, default: "Position"
      t.string :company, default: "Institution"
      t.string :description, default: "Responsible for  ..."

      t.timestamps
    end
  end
end
