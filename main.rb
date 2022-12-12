require './Player.rb'
require './Rounds.rb'

print "Player 1 please enter your name: "
player_1_name = gets.chomp
print "Player 2 please enter your name: "
player_2_name = gets.chomp

player1 = Player.new(player_1_name, true)
player2 = Player.new(player_2_name, false)

while player1.lives > 0 and player2.lives > 0 do 
  puts "---- New Turn ----"
  round = Rounds.new(player1.current_player ? "Player 1" : "Player 2")


  puts "#{round.current}: #{round.create_question}"
  player_answer = gets.chomp.to_i

  unless player_answer == round.question_answer
  puts "Sorry that is incorrect:(" 
  player1.current_player ? player1.lose_life : player2.lose_life
  end

  if player_answer == round.question_answer then 
    puts "Correct answer!" 
  end

  
  if player1.lives == 0 then
    puts "#{player2.name} wins with the score of #{player2.lives}/3}"
    puts "----GAME OVER----"
    puts "Thanks for playing my game!"
    break
  end
  
  if player2.lives == 0 then
    puts "#{player1.name} wins with the score of #{player1.lives}/3}"
    puts "----GAME OVER----"
    puts "Thanks for playing my game!"
    break
  end

  puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  player1.current_player = !player1.current_player

end







