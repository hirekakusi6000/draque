require "./character.rb"

class Monster < Character

  def turn(brave)
    puts "#{@name} の攻撃！"
    brave_damage = @offense - brave.defense / 2
    brave.hp -= brave_damage
    puts "#{brave.name} に #{brave_damage} のダメージを与えた!"
    brave.hp = 0 if brave.hp < 0
  end
  
end