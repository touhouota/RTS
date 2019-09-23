class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :bigint do |t|
      t.timestamps
    end
  end
end
