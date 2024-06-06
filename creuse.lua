-- version 0.2
decallage = 4 -- 12 
deplacement = 2 -- lar-- version 1.0
decallage = 6 -- 12 
deplacement = 2 -- largeur de minage
longueur = 8 -- 64   -- longueur de minage 
rPremier = 0
rDernier = 3

function digModerne()
  -- La tortue creuse devant elle (si sable ou gravier recommence)
  while turtle.detect() do
    turtle.dig()
    os.sleep(.5)
  end
end

function digDownModerne()
  -- La tortue creuse devant elle (si sable ou gravier recommence)
  while turtle.detectDown() do
    turtle.digDown()
    os.sleep(.5)
  end
end

function digUpModerne()
  -- La tortue creuse devant elle (si sable ou gravier recommence)
  while turtle.detectUp() do
    turtle.digUp()
    os.sleep(.5)
  end
end

function Minage()
  for i=1,deplacement do
    digUpModerne()
      digDownModerne()
    for j=1,longueur do
      digUpModerne()
      digDownModerne()
      digModerne()
      turtle.forward()
    end

    digUpModerne()
    digDownModerne()

    for j=1,longueur do
      turtle.back()
    end

    if i ~= deplacement then
      turtle.turnLeft()
      digModerne()
      turtle.forward()
      turtle.turnRight()
    end
  end
  turtle.turnLeft()
end

for descente=rDernier,rPremier, -1 do
  turtle.select(1)
  for i=1,decallage do
    digModerne()
    turtle.forward()
  end

  for i=0,descente do
    digDownModerne()
      turtle.down()
    digDownModerne()
      turtle.down()
    digDownModerne()
      turtle.down()
  end
  turtle.up()

  turtle.turnRight()

  Minage()

  for i=1,deplacement-1 do
    turtle.back()
  end

  turtle.down()

  for i=0,descente do
    turtle.up()
    turtle.up()
    turtle.up()
  end
--  turtle.down()
  
  for i=1,decallage do
    turtle.back()
  end

  while not turtle.detectUp() do
    digUpModerne()
    turtle.up()
  end

  for i=1,16 do
    turtle.select(i)
    turtle.dropUp()
  end
end
