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
    digDownModerne
      turtle.down()
      digDownModerne
      turtle.down()
  for i=1,deplacement do
    digUpModerne
      digDownModerne
    for j=1,longueur do
      digUpModerne
        digDownModerne
        digModerne
      turtle.forward()
    end
    for j=1,longueur do
      turtle.back()
    end
    turtle.turnLeft()
      digModerne
        turtle.forward()
        turtle.turnRight()
  end
  turtle.forward()
  for i=1,deplacement do
    turtle.forward()
  end
  turtle.turnLeft()
end
