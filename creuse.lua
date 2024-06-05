decallage = 12 
deplacement = 2 -- largeur de minage
longueur = 64
rPremier = 0
rDernier = 3

function DigModerne()
  -- La tortue creuse devant elle (si sable ou gravier recommence)
  while turtle.detect() do
    turtle.dig()
    os.sleep(.5)
  end
end

function DigDownModerne()
  -- La tortue creuse devant elle (si sable ou gravier recommence)
  while turtle.detectDown() do
    turtle.digDown()
    os.sleep(.5)
  end
end

function DigUpModerne()
  -- La tortue creuse devant elle (si sable ou gravier recommence)
  while turtle.detectUp() do
    turtle.digUpModerne()
    os.sleep(.5)
  end
end

function Minage()
  turtle.digDown()
    turtle.down()
    turtle.digDown()
    turtle.down()
  for i=1,deplacement do
    turtle.digUpModerne
      turtle.digDownModerne
    for j=1,longueur do
      turtle.digUpModerne
        turtle.digDownModerne
        turtle.digModerne
      turtle.forward()
    end
    for j=1,longueur do
      turtle.back()
    end
    turtle.turnLeft()
      turtle.digModerne
        turtle.forward()
        turtle.turnRight()
  end
  turtle.forward()
  for i=1,deplacement do
    turtle.forward()
  end
  turtle.turnLeft()
end

