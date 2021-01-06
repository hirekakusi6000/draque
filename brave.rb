require "./character.rb"

class Brave < Character

  def turn(monster)
    puts "#{@name} の攻撃！"
    monster_damage = @offense - monster.defense / 2
    monster.hp -= monster_damage
    puts "#{monster.name} に #{monster_damage} のダメージを与えた!"
    monster.hp = 0 if monster.hp < 0
  end

end