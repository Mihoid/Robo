require_relative 'Robo'
robo = Robo.new
robo.place(0, 0, "North")

robo.right
puts robo.inspect

robo.left
puts robo.inspect

robo.move
puts robo.inspect

puts "Now you can control your robo!Left, right, move!"
word = 0
until word == "breake"
  (word = gets.chomp) && (
  if word.downcase == "right"
    robo.right
	puts robo.inspect
  elsif word.downcase == "left"
    robo.left
	puts robo.inspect
  elsif word.downcase == "move"
    robo.move
	puts robo.inspect
  else
    puts "Please input correct command"
  end)
end