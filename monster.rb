class Monster
  attr_reader :name, :offense, :defense
  attr_accessor :hp
  def initialize(**params)
      @name = params[:name]
      @hp =  params[:hp]
      @offense = params[:offense]
      @defense = params[:defense]
  end

  def turn(brave)
    p "#{@name} の攻撃！"
    brave_damage = @offense - brave.defense / 2
    brave.hp -= brave_damage
    p "#{brave.name} に #{brave_damage} のダメージを与えた!"
    brave.hp = 0 if brave.hp < 0
  end
end