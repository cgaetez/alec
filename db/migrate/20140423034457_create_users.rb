class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :document_id, index: true
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :picture
      t.string :background
      t.string :status

      t.timestamps
    end
  end
end
