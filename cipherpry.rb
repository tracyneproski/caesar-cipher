require 'pry-byebug'

def alphabet_positions(string)
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
  
  if string.is_lower?
    string.bytes.map{|b| b - 96}
  elsif string.is_upper?
    string.bytes.map{|b| b - 64}
  end
end


def back_to_letter(letter, shift_key)
  original_letter = alphabet_positions(letter)
  original_letter = original_letter.join('').to_i
  shift_key = shift_key.to_i
  new_letter = []
  
  binding.pry
  
  new_letter.push(original_letter + shift_key + 96)
  new_letter.map {|x| x.chr}
  return new_letter
end

puts "What letter to test?"
letter = gets
letter = letter.chomp
puts "Shift amount?"
shift_key = gets
shift_key = shift_key.chomp

back_to_letter(letter, shift_key)