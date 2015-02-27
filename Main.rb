require_relative 'Robo'
robo = Robo.new
robo.place(0, 0, "North")

puts "Now you can control your robo!Left, right, move!"
word = 0
until word == "breake"
  (word = gets.chomp) && (
  case word.downcase
    when "right" || RIGHT 
	robo.right
	puts robo.inspect
    when "left"
    robo.left
	puts robo.inspect
    when "move"
    robo.move
	puts robo.inspect
  else
    puts "Please input correct command"
  end)
end