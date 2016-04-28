class Player

  DEFAULT_HIT_POINTS = 60
  MIN_ATTACK_VAL = 1
  MAX_ATTACK_VAL = 10

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def reduce
      @hit_points -= random_attack
  end

  private

  def random_attack
    Kernel.rand(MIN_ATTACK_VAL..MAX_ATTACK_VAL)
  end


end
