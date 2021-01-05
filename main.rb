require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 200, defense: 100)
monster = Monster.new(name: "デーモン", hp: 800, offense: 150, defense: 50)

p "#{monster.name}があらわれた!"

while brave.hp > 0 && monster.hp > 0
  #ゆうしゃの攻撃 
  brave.turn(monster)

  #モンスターの攻撃
  monster.turn(brave)

  #残りHP表示
     puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{monster.name}】HP: #{monster.hp}
    【#{brave.name}】HP: #{brave.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
end

p brave.hp > 0 ? "#{monster.name}をやっつけた!" : "#{brave.name}はしんでしまった!"