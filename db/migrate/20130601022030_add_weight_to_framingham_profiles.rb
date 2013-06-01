class AddWeightToFraminghamProfiles < ActiveRecord::Migration
  def change
    add_column :framingham_profiles, :weight, :integer
  end
end
