class FraminghamProfile < ActiveRecord::Base
  attr_accessible :age, :bmi, :diabetes, :male, :sbp, :smoker, :treatment

  validates_presence_of :age, :message => "Don't be shy now :)"
  validates_presence_of :bmi, :message => "Don't be embarrassed. No one's going to see this but you :)"
  validates_presence_of :diabetes, :message => "We won't tell"
  validates_presence_of :male, :message => "Pick one :)"
  validates_presence_of :sbp, :message => "Looks like you forgot something :)"
  validates_presence_of :smoker, :message => "Don't forget this one."
  validates_presence_of :treatment, :message => "Missed one."
end
