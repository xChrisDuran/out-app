class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|

      t.timestamps
      t.belongs_to :moment
      t.belongs_to :user
    end
  end
end
