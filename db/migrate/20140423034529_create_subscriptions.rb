class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user, index: true
      t.references :course, index: true
      t.string :relationship
      t.string :status

      t.timestamps
    end
  end
end
