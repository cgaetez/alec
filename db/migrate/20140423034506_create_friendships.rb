class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true
      t.references :friend, index: true
      t.string :relationship
      t.string :status

      t.timestamps
    end
  end
end
