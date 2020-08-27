class AddGenderToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gender, :string
    add_index :users, :gender, unique: true
  end
end
