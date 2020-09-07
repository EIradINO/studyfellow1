class AddUserdataToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :generation, :string
    add_column :users, :studyhours, :string
    add_column :users, :favsub, :string
    add_column :users, :badsub, :string
  end
end
