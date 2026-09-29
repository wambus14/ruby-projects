class Square
  def initialize(number)
    @value = ' '
    @place = number
  end
  attr_accessor :value

  def claim(player)
    return unless @value == ' '

    @value = player
  end
end

def play_game
  puts 'Player 1 is X     Player 2 is O'
  board_array = []
  # create board in hash
  9.times do |name|
    board_array[name] = Square.new(name)
  end
  # display empty board
  i = 2
  until board_array[0..2].all? { |sq| sq.value == ('X' || 'O') } ||
        board_array[3..5].all? { |sq| sq.value == ('X' || 'O') } ||
        board_array[6..8].all? { |sq| sq.value == ('X' || 'O') } ||
        (board_array[0].value == board_array[3].value && board_array[3].value == board_array[6].value && board_array[0].value != ' ') ||
        (board_array[1].value == board_array[4].value && board_array[4].value == board_array[7].value && board_array[1].value != ' ') ||
        (board_array[2].value == board_array[5].value && board_array[5].value == board_array[8].value && board_array[2].value != ' ') ||
        (board_array[0].value == board_array[4].value && board_array[4].value == board_array[8].value && board_array[0].value != ' ') ||
        (board_array[2].value == board_array[4].value && board_array[4].value == board_array[8].value && board_array[2].value != ' ')
    3.times do |row|
      puts "[#{board_array[row * 3].value}][#{board_array[row * 3 + 1].value}][#{board_array[row * 3 + 2].value}]"
    end
    puts
    if board_array[0..8].all? { |i| i.value != ' ' }
      puts 'tie'
      return
    elsif i.even?
      puts 'Player 1?'
      board_array[gets.chomp.to_i - 1].claim('X')
    elsif i.odd?
      puts 'Player 2?'
      board_array[gets.chomp.to_i - 1].claim('O')
    end
    puts
    i += 1
  end
  3.times do |row|
    puts "[#{board_array[row * 3].value}] [#{board_array[row * 3 + 1].value}] [#{board_array[row * 3 + 2].value}]"
  end
  if i.odd?
    puts 'Congrats Player 1!'
  elsif i.even?
    puts 'Congrats Player 2!'
  end
end
play_game
