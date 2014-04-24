class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :user, index: true
      t.references :school, index: true
      t.string :relationship
      t.string :status

      t.timestamps
    end
  end
end
