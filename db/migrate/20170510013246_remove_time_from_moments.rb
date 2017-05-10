class RemoveTimeFromMoments < ActiveRecord::Migration[5.0]
  def change
    remove_column :moments, :time, :time
  end
end
