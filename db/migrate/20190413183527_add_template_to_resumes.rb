class AddTemplateToResumes < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :template, :integer, default: 1
  end
end
