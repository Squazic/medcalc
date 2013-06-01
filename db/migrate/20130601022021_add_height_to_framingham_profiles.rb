class AddHeightToFraminghamProfiles < ActiveRecord::Migration
  def change
    add_column :framingham_profiles, :height, :integer
  end
end
