class CreateUserTimeSeparators < ActiveRecord::Migration[6.0]
  def change
    create_table :user_time_separators, id: :bigint do |t|
      t.datetime :separator
      t.bigint :user_id

      t.timestamps
    end

    add_index :user_time_separators, [:id, :user_id]
  end
end
