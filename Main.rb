require_relative 'Robo'
robo = Robo.new
robo.place(0, 0, "North")

robo.right
puts robo.inspect

robo.left
puts robo.inspect

