class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, :requester, index: true, foreign_key: true
      t.references :user, :responser, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
