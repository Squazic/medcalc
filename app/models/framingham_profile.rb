class FraminghamProfile < ActiveRecord::Base
  attr_accessible :age, :diabetes, :male, :sbp, :smoker, :treatment, :height, :weight

  validates_presence_of :age, :message => "Don't be shy now :)"
  validates_presence_of :diabetes, :message => "We won't tell"
  validates_presence_of :male, :message => "Pick one :)"
  validates_presence_of :sbp, :message => "Looks like you forgot something :)"
  validates_presence_of :smoker, :message => "Don't forget this one."
  validates_presence_of :treatment, :message => "Missed one."
  validates_presence_of :height, :message => "Come on, we know you're as tall as Michael Jordan"
  validates_presence_of :weight, :message => "Don't be embarrassed. No one's going to see this but you :)"
end
