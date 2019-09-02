class RemoveAndAddColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    # remove_columns(:users, :name, :email)
    add_column :users, :username, :text, null: false
    add_index :users, :username, unique: true
    remove_column :users, :name, :text, null: false
    remove_column :users, :email, :text,  null: false
  
  end
end
