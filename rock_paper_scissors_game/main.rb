puts "Rock, Paper and Scissors Game"
puts "Let's go make your move"
moves = ["rock", "paper", "scissors"]
validmove = false

while !validmove
    print "Enter your move choice: "
    playermove = gets.chomp.downcase
    validmove = case
    when moves.include?(playermove) then validmove = true
    else validmove = false; puts "Invalid Input"
    end
end

computermove = moves[rand(0..2)];

result = case
when playermove == computermove
    "The game is a Tie!"
when playermove == "rock" && computermove == "paper"
    "You lose. #{computermove} beats #{playermove}"
when playermove == "rock" && computermove == "scissors"
    "You Win. #{playermove} beats #{computermove}"
when playermove == "paper" && computermove == "scissors"
    "You lose. #{computermove} beats #{playermove}"
when playermove == "paper" && computermove == "rock"
    "You Win. #{playermove} beats #{computermove}"
when playermove == "scissors" && computermove == "rock"
    "You lose. #{computermove} beats #{playermove}"
when playermove == "scissors" && computermove == "paper"
    "You Win. #{playermove} beats #{computermove}"
end

puts "Your Move: #{playermove}"
puts "Computer Move: #{computermove}"
puts result