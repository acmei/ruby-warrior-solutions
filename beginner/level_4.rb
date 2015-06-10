class Player
  def play_turn(warrior)
    if @health == nil
      @health = warrior.health
    end

    if warrior.health < @health
      if warrior.feel.empty?
        warrior.walk!
      else
        warrior.attack!
      end
    elsif (@health == warrior.health)
      if warrior.feel.empty? && warrior.health < 20
        warrior.rest!
      elsif warrior.feel.empty? == false
        warrior.attack!
      else 
        warrior.walk!
      end
    end
    @health = warrior.health
  end
end
