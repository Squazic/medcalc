class RemoveBmiFromFraminghamProfiles < ActiveRecord::Migration
  def up
    remove_column :framingham_profiles, :bmi
  end

  def down
    add_column :framingham_profiles, :bmi, :float
  end
end
