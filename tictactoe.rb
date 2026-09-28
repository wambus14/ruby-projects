class Square
  def initialize(number)
    @value = ' '
    @place = number
  end
  attr_accessor :value

  def claim(player)
    @value = player
  end
end

def play_game
  puts 'Player 1 is X     Player 2 is O'
  board_hash = {}
  # create board in hash
  9.times do |name|
    board_hash[name] = Square.new(name)
  end
  # display empty board
  3.times do |row|
    puts "[#{board_hash[row * 3].value}] [#{board_hash[row * 3 + 1].value}] [#{board_hash[row * 3 + 2].value}]"
  end
  puts 'Player 1?'
  board_hash[gets.chomp.to_i - 1].claim('x')
  3.times do |row|
    puts "[#{board_hash[row * 3].value}] [#{board_hash[row * 3 + 1].value}] [#{board_hash[row * 3 + 2].value}]"
  end
end
play_game
