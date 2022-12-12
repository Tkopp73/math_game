class Player
  def initialize(name, current)
    @name= name
    @lives= 3
    @current_player = current
  end

  def lose_life 
    new_life = @lives - 1
    @lives = new_life
  end
  attr_reader :name
  attr_accessor :lives
  attr_accessor :current_player
end
