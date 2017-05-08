class CreateMoments < ActiveRecord::Migration[5.0]
  def change
    create_table :moments do |t|
      t.string :name
      t.string :location
      t.text :description
      t.datetime :date
      t.datetime :time
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.integer :attendance
      t.float :latitude
      t.float :longitude
      t.string :picture

      t.timestamps
    end
  end
end
