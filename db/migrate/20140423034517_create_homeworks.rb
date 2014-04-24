class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.references :teacher, index: true
      t.references :course, index: true
      t.string :activity
      t.string :title
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
