class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.text :description
      t.timestamps
    end
  end
end
