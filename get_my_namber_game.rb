=begin
Get My Number Game
Written by Veronika Kadesh
=end

puts "Welcome to \"Get My Number!\" "
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"
puts "I've got a random number between 1 and 1000."
puts "Can you guess it?"
target = rand (100) +1

=begin
Чтоб посмотреть загаданное число:
puts "Zagadali - #{target}"
=end

num_guees = 0
guessed_it = false

until num_guees == 10 || guessed_it
  puts "You've got #{10 - num_guees} guees left"
  print "Make a guess: "
  guess = gets.to_i
  num_guees += 1

  if guess < target
    puts "Oops. Your guess was LOW"
  elsif guess > target
    puts "Oops. Your guess was HIGH"
  elsif guess == target
    puts "Good job, #{name}!"
    puts "Your guesses my number in #{num_guees} guesses!"
    guessed_it = true
  end

end

unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target})"
end