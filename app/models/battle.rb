class Battle < ApplicationRecord
  enum status:{attack: 0,spells:1,defend:2,item:3, abilities:4}
#atttak=攻撃、spells=魔法、defend=防御、item=アイテム、abilities=特技

end
