-- Programme pour turtle de mise en bloc des blocs de Cobblestone
-- version 1.0.2

r = {}
    r[1] = 4
    r[2] = 8
    r[3] = 12
    r[4] = 13
    r[5] = 14
    r[6] = 15
    r[7] = 16
t = {}
    t[1] = 1
    t[2] = 2
    t[3] = 3
    t[4] = 5
    t[5] = 6
    t[6] = 7
    t[7] = 9
    t[8] = 10
    t[9] = 11

Compter = 0
for i=1,9 do 
  turtle.select(t[i])
  Compter = Compter + turtle.getItemCount()
end
if Compter == 0 then
  continuer = true
  while continuer == true do
    turtle.suckUp()
    quantite = math.floor(turtle.getItemCount() / 9)
    turtle.dropUp()
    if quantite ~= 0 then 
      for i=1,9 do 
        turtle.select(t[i])
        turtle.suckUp(quantite)
      end
      turtle.select(1)
      turtle.craft()
      turtle.dropDown()
    
      j = 1
      continuerj = true
      while continuerj == true do
        turtle.select(j)
        turtle.suckDown()
        if turtle.getItemCount() > 9 then
          quantite = math.floor(turtle.getItemCount() / 9)
          for k=j,1,-1 do 
            turtle.select(k)
            turtle.dropDown()
          end
          for i=1,9 do 
            turtle.select(t[i])
            turtle.suckDown(quantite)
          end
          turtle.select(1)
          turtle.craft()
          turtle.dropDown()
        end
        j = j + 1
        if turtle.getItemCount() == 0 then 
          continuerj = false 
        end
      end
      for i=1,9 do 
        turtle.select(t[i])
        turtle.dropDown()
      end
    end
  end
end 
