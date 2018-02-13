module SpaceInvaders
  ALIEN = %w(
       ---oo---
       --oooo--
       -oooooo-
       oo-oo-oo
       oooooooo
       --o--o--
       -o-oo-o-
       o-o--o-o
    )

  PREDATOR = %w(
      --o-----o--
      ---o---o---
      --ooooooo--
      -oo-ooo-oo-
      ooooooooooo
      o-ooooooo-o
      o-o-----o-o
      ---oo-oo---
    )

  Shapes =  { alien: ALIEN,         predator: PREDATOR         }
  Heads  =  { alien: ALIEN.first,   predator: PREDATOR.first   }
  Bodies =  { alien: ALIEN.drop(1), predator: PREDATOR.drop(1) }
end
