decallage = 12 
deplacement = 2 -- largeur de minage
longueur = 64   -- longueur de minage 
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
    for j=1,longueur do
      turtle.back()
    end
    turtle.turnLeft()
      digModerne()
        turtle.forward()
        turtle.turnRight()
  end
  turtle.forward()
  for i=1,deplacement do
    turtle.forward()
  end
  turtle.turnLeft()
end

for descente=rPremier, rDernier do
  turtle.select(1)
  for j=1,longueur do
    turtle.forward()
  end

  for i=0,rDernier-descente do
    digDownModerne()
      turtle.down()
      digDownModerne()
      turtle.down()
      digDownModerne()
      turtle.down()
  end
  turtle.up()

  turtle.turnRight()

--  Minage()

  turtle.turnLeft()
  for i=1,longueur do
    turtle.back()
  end

  while not turtle.detectUp() do
    turtle.Up()
  end

  for i=1,16 do
    turtle.select(i)
    turtle.dropUp()
  end
end
