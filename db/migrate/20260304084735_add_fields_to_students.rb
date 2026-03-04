class AddFieldsToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :name, :string
    add_column :students, :email, :string
    add_column :students, :phone, :string
    add_column :students, :address, :text
  end
end
