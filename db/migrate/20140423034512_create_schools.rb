class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.text :address
      t.float :latitude
      t.float :longitude
      t.string :url
      t.string :picture
      t.string :status

      t.timestamps
    end
  end
end
