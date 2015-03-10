require_relative 'Robo'
robo = Robo.new

puts "Enter X Y VECTOR to put robo on table"
(x, y, vector = str = gets.chomp.split) until (robo.place(x, y, vector))

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
