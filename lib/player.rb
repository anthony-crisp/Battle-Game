#
class Player
  DEFAULT_HIT_POINTS = 100
  DEFAULT_HIT = 10

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def take_damage
    @hit_points -= DEFAULT_HIT
  end

end
