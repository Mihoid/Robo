class Table
  def data
  dt = gets.to_i until (dt == 1 || dt == 2 || dt == 3 || dt == 4 || dt == 5)
  end
end
class Robo



end

x = Table.new
y = Table.new
vector = Robo.new
maxstep = Robo.new

print "Put x please (1-5). x="
x.data
print "Put y please (1-5). y="
y = gets.to_i until (y == 1 || y == 2 || y ==3 || y == 4 || y == 5)
puts "x=#{x}, y=#{y}"
puts "puts your vector North, South, East, West"
vector = gets.chomp.capitalize until (vector == "North" || vector =="South" || vector =="East" || vector =="West")
puts "Your vector is #{vector}"
if vector == "North"
  maxstep = 5 - y 
  elsif vector == "South"
  maxstep = y - 1
  elsif vector == "East"
  maxstep = x - 1
  elsif vector == "West"
  maxstep = 5 - x
end
puts maxstep
puts "Put forward or back for moving"
move = gets.chomp.downcase until (move == "forward" || move == "back")
