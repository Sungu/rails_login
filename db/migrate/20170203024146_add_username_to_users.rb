class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, :unique => true
    add_column :users, :student_number, :string, :unique => true
    add_column :users, :nickname, :string, :unique => true
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
    add_column :users, :real_student, :boolean, :default => false
  end
end
