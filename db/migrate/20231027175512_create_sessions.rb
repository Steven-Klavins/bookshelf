class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.string :session_key

      t.timestamps
    end
  end
end
