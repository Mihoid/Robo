require_relative 'robo'
robo = Robo.new

puts "Enter X Y VECTOR to put robo on table"
loop do
  begin
    print "> "
    command = gets.chomp.downcase.split
    robo.send command[0], *command[1,3]
  rescue Robo::Error
    puts "Place x y vector"
  rescue ArgumentError, NoMethodError
  puts " Wrong command\n Available commands:\n1.Place x y vector\n2.Move \n3.Right \n4.Left \n5.Report"
  end
end
