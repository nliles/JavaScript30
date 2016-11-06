require_relative 'ground_animal'
require_relative 'levitating'

class Squirrel < GroundAnimal

  include Levitating

  attr_accessor :status

  BASE_ATTACK_STRENGTH = 50
  BASE_DEFENSE_STRENGTH = 95

  CUSTOM_ATTACKS = [:tail_whip, :thrash]

  def initialize(args={})
  	super 
  	@status = args.fetch(:status, :normal)
  end 

  def reset_status 
  	@status = :normal
  end 

end
