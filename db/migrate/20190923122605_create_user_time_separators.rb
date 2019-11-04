# frozen_string_literal: true

class CreateUserTimeSeparators < ActiveRecord::Migration[6.0]
  def change
    create_table :user_time_separators, id: :bigint do |t|
      t.integer :separated_at, unsigned: true, null: false
      t.bigint :user_id, unsigned: true, null: false

      t.timestamps
    end

    add_index :user_time_separators, [:id, :user_id]
  end
end
