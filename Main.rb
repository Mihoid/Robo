require_relative 'Robo'
robo = Robo.new



puts "Enter X Y VECTOR to put robo on table"
x, y, vector = str = gets.chomp.split

# until ((0..4).include?(x.to_i)) && ((0..4).include?(y.to_i)) && ((vector.capitalize == "North" || vector.capitalize == "South" || vector.capitalize == "East" || vector.capitalize == "West"))
  # str = gets.chomp
  # x, y, vector = str.split
  # puts x, y, vector
# end

until (/0?1?2?3?4?/ === x) && (/0?1?2?3?4?/ === y) && (/North|South|West|East/ === vector.capitalize)
  str = gets.chomp
  x, y, vector = str.split
  puts x, y, vector
end


x = x.to_i
y = y.to_i
vector = vector.capitalize
robo.place(x, y, vector)

puts "Now you can control your robo!Left, right, move! or stop"
word = 0
until word == "stop"
  (word = gets.chomp.downcase) && (
  case word.downcase
    when "right"
	robo.right
    puts robo.inspect
    when "left"
    robo.left
    puts robo.inspect
    when "move"
    robo.move
    puts robo.inspect
  end)
end
