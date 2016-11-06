require_relative 'flying_animal'
require_relative 'raging'

class Bobolink < FlyingAnimal
	include Raging

	attr_accessor :status

  BASE_ATTACK_STRENGTH = 60
  BASE_DEFENSE_STRENGTH = 30

  CUSTOM_ATTACKS = [:fury_attack, :razor_wind]

  def initialize(args={})
  	super 
  	@status = args.fetch(:status, :normal)
  end 

  def reset_status 
  	@status = :normal
  end 
 
end

