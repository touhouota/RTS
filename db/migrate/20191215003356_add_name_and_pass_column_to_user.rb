class AddNameAndPassColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false, after: :id
    add_column :users, :pw, :string, null: false, after: :name
  end
end
