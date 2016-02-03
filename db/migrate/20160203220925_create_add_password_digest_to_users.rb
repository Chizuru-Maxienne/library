class CreateAddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    create_table :add_password_digest_to_users do |t|
      add_column :users, :password_digest, :string
      add_index :users, :email, unique:true
    end
  end
end
