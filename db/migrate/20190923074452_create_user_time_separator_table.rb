class CreateUserTimeSeparatorTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_time_separator_tables, id: :bigint do |t|
      t.integer :separator, null: false
    end
  end
end
