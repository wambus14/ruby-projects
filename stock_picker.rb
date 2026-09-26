def stock_picker(values) 
  array = values.map.with_index do |value,day|
    values.map do
      |num| num - values[day] 
    end 
  end
  array_maxes =  array.map do |day|
    day.max 
  end
  print "Buy: Day #{array_maxes.index(array_maxes.max)}\n"
  print "Sell: Day #{array[array_maxes.index(array_maxes.max)].index(array[array_maxes.index(array_maxes.max)].max)}\n"
end
puts "Enter Comma Seperated List of Stock Prices by the Day : "
price_list = gets.chomp.split(',')
stock_picker(price_list.map!(&:to_i))