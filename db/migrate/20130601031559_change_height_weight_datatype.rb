class ChangeHeightWeightDatatype < ActiveRecord::Migration
  def up
    change_column :framingham_profiles, :height, :float
    change_column :framingham_profiles, :weight, :float
  end

  def down
    change_column :framingham_profiles, :height, :integer
    change_column :framingham_profiles, :weight, :integer
  end
end
