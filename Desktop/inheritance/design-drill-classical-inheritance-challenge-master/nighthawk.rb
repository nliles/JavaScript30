require_relative 'flying_animal'
require_relative 'raging'

class Nighthawk < FlyingAnimal
	include Raging

	attr_accessor :status

  BASE_ATTACK_STRENGTH = 45
  BASE_DEFENSE_STRENGTH = 40

  CUSTOM_ATTACKS = [:peck, :hurricane]

  def initialize(args={})
  	super 
  	@status = args.fetch(:status, :normal)
  end 

  def reset_status 
  	@status = :normal
  end 

end


