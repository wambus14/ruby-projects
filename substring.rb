def contain(string)
  string_hash = Hash.new(0)
  dictionary = %w[do the ought is in on of out or he]
  words_arr = string.downcase.split(' ')
  words_arr.each do |word|
    dictionary.each do |diction|
      string_hash[diction] += 1 if word.include?(diction)
    end
  end
  puts string_hash
end
