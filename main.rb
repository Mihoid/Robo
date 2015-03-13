require_relative 'robo'
robo = Robo.new

puts "Enter X Y VECTOR to put robo on table"
loop do
  begin
    print "> "
    command = gets.chomp.downcase.split
    robo.send command[0], *command[1,3]
  rescue
    puts "try again"
  end
end
