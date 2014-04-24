class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :homework, index: true
      t.string :title
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
