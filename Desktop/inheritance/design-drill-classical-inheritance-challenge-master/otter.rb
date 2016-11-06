require_relative 'water_animal'
require_relative 'levitating'
require_relative 'raging'

class Otter < WaterAnimal
  include Levitating 
  include Raging

  attr_accessor :status

  BASE_HIT_POINTS = 60

  BASE_ATTACK_STRENGTH = 45
  BASE_DEFENSE_STRENGTH = 70


  CUSTOM_ATTACKS = [:aqua_tail, :water_spout]

  def initialize( args = {})
  	super
  	@status = args.fetch(:status, :normal)
  end 

  def reset_status 
  	@status = :normal
  end 

end

