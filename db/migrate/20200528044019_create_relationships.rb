class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :user, foregin_key: true
      t.references :follow, foregin_key: { to_table: :users }

      t.timestamps

      t.index [:user_id, :follow_id], unique: true
    end
  end
end
