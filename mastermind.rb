class Slot
  def initialize(color)
    @color = color
  end
  attr_accessor :color
end

def new_game
  color_options = %w[blue red green]
  game_pegs = []
  correct = []
  4.times do |i|
    game_pegs.push(Slot.new(color_options[rand(color_options.length)]))
  end
  puts "Pegs : #{game_pegs.length}"
  puts "Color Options : #{color_options}"
  12.times do
    puts 'Your Guess? (space between each color)'
    guess = gets.chomp.split(' ')
    game_colors = game_pegs.map(&:color)
    p game_colors
    correct = guess.select.with_index do |color, i|
      color == game_colors[i]
    end
    wrong_spot = []
    guess.each.with_index do |color, i|
      if color == game_colors[i]
        guess.delete_at(i)
        game_colors.delete_at(i)
      end
    end
    guess.each.with_index do |color, i|
      if (color != game_pegs[i].color) && game_colors.any? { |c| c == color }
        game_colors.delete_at(game_colors.index(color))
        wrong_spot.push(color)
      end
    end
    break if correct.length == game_pegs.length

    puts "#{correct.length} Correct"
    puts "#{wrong_spot.length} Wrong Spot\n\n"
    # p guess
    p game_colors
    # p game_pegs
    # p wrong_spot
  end
  if correct.length == game_pegs.length
    puts 'you win'
  else
    puts 'you loose'
  end
end
new_game
