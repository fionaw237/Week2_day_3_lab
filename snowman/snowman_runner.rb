require_relative("game.rb")
require_relative("player.rb")
require_relative("hidden_word.rb")
require 'io/console'


puts "Enter a secret word: "
# entered_word = STDIN.noecho(&:gets).chomp
entered_word = gets.chomp()
system 'clear'

word = HiddenWord.new(entered_word)
player = Player.new("Fiona")
game = Game.new(player, word)

puts "The word to guess is ", word.display_guessed_letters(word.display_guessed_letters(game.guessed_letters()))

while (!game.is_won) && (!game.is_lost)
  puts "Guess a letter: "
  letter = gets.chomp()
  game.guess_letter(word, letter)
  puts game.word.display_guessed_letters(game.guessed_letters())
  game.is_won?()
  game.is_lost?()
end

puts "Well done, you win!" if game.is_won()
puts "You lose - snowman has melted :(" if game.is_lost()
