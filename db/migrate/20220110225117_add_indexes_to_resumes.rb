class AddIndexesToResumes < ActiveRecord::Migration[6.1]
  def change
    add_index :resumes, :zip
  end
end
