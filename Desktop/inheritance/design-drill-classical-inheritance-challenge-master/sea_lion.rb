require_relative 'water_animal'

class SeaLion < WaterAnimal

  BASE_HIT_POINTS = 65

  BASE_ATTACK_STRENGTH = 45
  BASE_DEFENSE_STRENGTH = 55

  CUSTOM_ATTACKS = [:surf, :body_slam]

end
