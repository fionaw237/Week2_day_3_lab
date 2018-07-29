require_relative("game.rb")
require_relative("player.rb")
require_relative("hidden_word.rb")
require 'io/console'

puts "Enter a secret word/phrase: "
# entered_word = STDIN.noecho(&:gets).chomp
entered_word = gets.chomp()
system 'clear'

puts "What's your name?"
name = gets.chomp()
puts "Hi, #{name}!"

player = Player.new(name)
word = HiddenWord.new(entered_word)
game = Game.new(player, word)

puts "Your word/phrase to guess is ", word.display_guessed_letters(word.display_guessed_letters(game.guessed_letters()))

while (!game.is_won) && (!game.is_lost)
  puts "Guess a letter: "
  letter = gets.chomp()
  game.guess_letter(word, letter)
  puts game.word.display_guessed_letters(game.guessed_letters())
  game.is_won?()
  game.is_lost?()
end

puts "Well done, #{name} - you win!" if game.is_won()
puts "You lose - snowman has melted :(" if game.is_lost()
