module FraminghamProfilesHelper
  def calculate_risk(profile)
    # Different constants based on male or female
    if profile.male
      constants = {:age => 3.11296,
                   :bmi => 0.79277,
                   :sbp => 1.85508,
                   :sbp_treated => 1.92672,
                   :smoker => 0.70953,
                   :diabetes => 0.53160,
                   :exp_base => 0.88431,
                   :subtract => 23.93888}
    else
      constants = {:age => 2.72107,
                   :bmi => 0.51125,
                   :sbp => 2.81291,
                   :sbp_treated => 2.88267,
                   :smoker => 0.61868,
                   :diabetes => 0.77763,
                   :exp_base => 0.94833,
                   :subtract => 26.0145}
    end

    # Result of sigma
    sum = 0
    if profile.treatment
      sum += constants[:sbp_treated] * Math.log(profile.sbp)
    else
      sum += constants[:sbp] * Math.log(profile.sbp)
    end
    sum += Math.log(profile.age) * constants[:age]
    sum += Math.log(profile.bmi) * constants[:bmi]

    # Create ints for smoker/diabetes
    smoker = (profile.smoker ? 1 : 0)
    diabetes = (profile.diabetes ? 1 : 0)
    sum += smoker * constants[:smoker]
    sum += diabetes * constants[:diabetes]

    # Rest of math
    exp = Math.exp(sum - constants[:subtract])
    result = 1 - constants[:exp_base] ** exp
    result_pct = number_to_percentage(result * 100, :precision => 1)
  end
end
