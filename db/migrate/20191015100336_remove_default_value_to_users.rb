class RemoveDefaultValueToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :name, nil
    change_column_default :users, :email, nil
    change_column_default :users, :phone_number, nil
  end
end
