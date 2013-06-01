class FraminghamProfile < ActiveRecord::Base
  attr_accessible :age, :diabetes, :male, :sbp, :smoker, :treatment, :height, :weight
  attr_accessor :height_units, :weight_units
  attr_accessible :height_units, :weight_units

  validates_presence_of :age, :message => "Don't be shy now :)"
  validates_inclusion_of :diabetes, :in => [true, false], :message => "We promise we won't tell."
  validates_inclusion_of :male, :in => [true, false], :message => "Pick one :)"
  validates_presence_of :sbp, :message => "Looks like you forgot something :)"
  validates_inclusion_of :smoker, :in => [true, false], :message => "Don't forget this one."
  validates_inclusion_of :treatment, :in => [true, false], :message => "Missed one."
  validates_presence_of :height, :message => "Come on, we know you're as tall as Michael Jordan"
  validates_presence_of :weight, :message => "Don't be embarrassed. No one's going to see this but you :)"
  validates_presence_of :height_units, :message => "Don't forget the units!"
  validates_presence_of :weight_units, :message => "Are you a metric guy?"

  before_create :convert_height, :convert_weight

  private
    def convert_height
      if self.height_units == "in"
        self.height *= 2.54
      end
    end

    def convert_weight
      if self.weight_units == "lb"
        self.weight *= 0.4536
      end
    end
end
