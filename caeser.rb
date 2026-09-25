def caesar(text, shift = 0) 
  text_array = text.split('')
  alphabet = ('a'..'z').to_a
  up_alphabet = ('A'..'Z').to_a
  shifted_arr = text_array.map do
    |char|
     if alphabet.include?(char)  
     char =  alphabet[char.ord - 97 - shift % 26]
     elsif up_alphabet.include?(char)
      char =  up_alphabet[char.ord - 65 - shift % 26]    
     else
      char = char
     end 
  end
 print shifted_arr.join.to_s
end

puts "\nEnter Text :"
input_text = gets.chomp.to_s
print "\nOffset : \n"
input_shift = gets.chomp.to_i
print "\nShifted Text : \n"
caesar(input_text, input_shift)