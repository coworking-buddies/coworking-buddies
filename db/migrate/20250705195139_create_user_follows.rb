class CreateUserFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :user_follows do |t|
      t.references :follower, null: false, foreign_key: { to_table: :users }
      t.references :followed, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
