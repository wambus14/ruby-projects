
def contain(string)
   e_count = 0
   string_hash = Hash.new(0)
   dictionary = ["do", "the", "ought", 'is','in','on','of','out','or','he']
   words_arr = string.downcase.split(' ')
   words_arr.each do
       |word|
       dictionary.each do
           |diction|
           if word.include?(diction)
           string_hash[diction] += 1
           end
       end
   end
puts string_hash
end
