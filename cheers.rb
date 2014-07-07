# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”

# P.S.: name.methods - Object.methods

require 'Date'

puts "What's your name?"
name = gets.chomp

if name.empty?
  puts "You must enter a name!"
  exit
else
  puts "Your name is #{name}"
  name.upcase.each_char do |char|
    if "AEFHILMNORSX".include? "#{char}"
      puts "Give me an... #{char}"
    else
      puts "Give me a... #{char}"
    end
  end
  puts "#{name.upcase}'s just GRAND!"
end

puts "Hey, #{name}, what's your birthday?(Ex: 03/13/1990)"
bdayInput = gets.chomp

today = DateTime.now
originalBDAY = Date.strptime(bdayInput.to_s, "%m/%d/%Y")

if today.yday > originalBDAY.yday
  bday = Date.new(today.year + 1, originalBDAY.month, originalBDAY.day)
else
  bday = Date.new(today.year, originalBDAY.month, originalBDAY.day)
end

time_until = (bday - today) + 1

puts "Awesome!  Your birthday is in #{time_until.to_i} days! Happy Birthday in advance"
