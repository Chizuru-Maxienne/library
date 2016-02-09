class CreateAuths < ActiveRecord::Migration
  def change
    create_table :auths do |t|

      t.timestamps null: false
    end
  end
end
