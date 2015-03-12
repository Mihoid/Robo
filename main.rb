require_relative 'robo'
robo = Robo.new

  puts "Enter X Y VECTOR to put robo on table"
  x, y, vector = str = gets.chomp.split
  robo.place(x, y, vector)

puts "Now you can control your robo!Left, right, move! or break"
word = 0
loop do
  word = gets.chomp.downcase
  case word.downcase
  when "right"
    robo.right
  when "left"
    robo.left
  when "move"
    robo.move
  when "report"
    robo.report
  when "break"
    break
  end
end
