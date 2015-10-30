class Player

DEFAULT_POINTS = 80

  attr_reader :name, :hp

  def initialize(name, default_points = DEFAULT_POINTS)
    @name = name
    @hp = default_points
  end

  def receive_damage
    	@hp -= 20
  	end	

end
