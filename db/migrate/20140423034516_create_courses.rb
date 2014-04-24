class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :user, index: true
      t.references :school, index: true
      t.string :name
      t.string :level
      t.integer :year
      t.string :status

      t.timestamps
    end
  end
end
