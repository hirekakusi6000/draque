class Brave
  attr_reader :name, :offense, :defense
  attr_accessor :hp
  def initialize(**params)
      @name = params[:name]
      @hp = params[:hp]
      @offense = params[:offense]
      @defense = params[:defense]
  end

  def turn(monster)
    p "#{@name} の攻撃！"
    monster_damage = @offense - monster.defense / 2
    monster.hp -= monster_damage
    p "#{monster.name} に #{monster_damage} のダメージを与えた!"
    monster.hp = 0 if monster.hp < 0
  end
end