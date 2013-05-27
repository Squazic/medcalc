class CreateFraminghamProfiles < ActiveRecord::Migration
  def change
    create_table :framingham_profiles do |t|
      t.boolean :male
      t.integer :age
      t.integer :sbp
      t.boolean :treatment
      t.boolean :smoker
      t.boolean :diabetes
      t.float :bmi

      t.timestamps
    end
  end
end
