class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :student, index: true
      t.references :homework, index: true
      t.references :page, index: true
      t.integer :start_at_character
      t.integer :end_at_character
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
