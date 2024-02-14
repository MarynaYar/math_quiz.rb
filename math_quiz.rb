puts "Welcome to the math quiz!"

loop do
  number_1 = rand(100)
  number_2 = rand(100)
  symbol = [:+, :-, :*, :/]

  multiple = number_1.send(symbol.sample, number_2)

  puts "What is #{number_1} #{symbol.sample} #{number_2}?"
  answer = gets.chomp
  if answer.to_s == "quit"
    puts "Goodbye!"
    break
  elsif answer.to_i == multiple
    puts "Correct!"
  else
    puts "Wrong!"
  end
end
