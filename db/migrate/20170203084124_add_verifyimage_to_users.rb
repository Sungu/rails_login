class AddVerifyimageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :verifyimage, :string
  end
end
