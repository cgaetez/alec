class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :student, index: true
      t.references :homework, index: true
      t.references :page, index: true
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
