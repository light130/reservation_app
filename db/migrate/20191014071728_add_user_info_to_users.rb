class AddUserInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, default: "", null: false
    add_column :users, :phone_number, :string, default: "", null: false
  end
end
