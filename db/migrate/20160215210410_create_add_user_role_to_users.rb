class CreateAddUserRoleToUsers < ActiveRecord::Migration
  def change
    create_table :add_user_role_to_users do |t|
      add_column :users, :role, :integer, default: 1
    end
  end
end
