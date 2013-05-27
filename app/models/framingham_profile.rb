class FraminghamProfile < ActiveRecord::Base
  attr_accessible :age, :bmi, :diabetes, :male, :sbp, :smoker, :treatment
end
