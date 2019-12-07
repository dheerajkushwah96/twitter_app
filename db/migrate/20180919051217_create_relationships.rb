class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :follower_id

      t.timestamps

    end
      add_index :relationships, :follower_id
      add_index :relationships, :user_id
      add_index :relationships, [:follower_id, :user_id], unique: true
  end
end
