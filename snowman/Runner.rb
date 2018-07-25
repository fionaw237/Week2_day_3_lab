require_relative("game.rb")
require_relative("player.rb")
require_relative("hidden_word.rb")
require 'io/console'

puts "Enter a secret word: "
word = STDIN.noecho(&:gets).chomp
