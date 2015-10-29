class Player

DEFAULT_POINTS = 80

  attr_reader :name, :default_points

  def initialize(name, default_points = DEFAULT_POINTS)
    @name = name
    @default_points = default_points
  end




    def receive_damage
  		@default_points -= 20
  	end

end

