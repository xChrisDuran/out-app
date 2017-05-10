class RemoveDateFromMoments < ActiveRecord::Migration[5.0]
  def change
    remove_column :moments, :date, :datetime
  end
end
