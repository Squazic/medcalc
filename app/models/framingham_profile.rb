class FraminghamProfile < ActiveRecord::Base
  attr_accessible :age, :bmi, :diabetes, :male, :sbp, :smoker, :treatment

  validates :age, :presence => true
  validates :bmi, :presence => true
  validates :sbp, :presence => true
end
