#Odin Project Caesar Cipher Project

require 'pry-byebug'

class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end


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


def back_to_letter_upper(shift_key)
  if shift_key > 26
    shift_key = shift_key - 26
  end
  new_letter = []
  new_letter.push(shift_key + 64)
  transformed_new_letter = new_letter.map {|x| x.chr}
  return transformed_new_letter
end


def back_to_letter_lower(shift_key)
  if shift_key > 26
    shift_key = shift_key - 26
  end
  new_letter = []
  new_letter.push(shift_key + 96)
  transformed_new_letter = new_letter.map {|x| x.chr}
  return transformed_new_letter
end


def shift(original_position, shift_amount = 0)
  shift_amount = shift_amount.to_i
  if shift_amount > 26
    shift_amount = shift_amount % 26
  end
  new_number = original_position + shift_amount
end


def separate(statement)
  string_array = statement.split('')
end


def letter_eval(final_array, separated, shift_amount = 0)
  separated.each do |character|
    if character.match?(/[[:alpha:]]/) == false
      final_array.push(character)
    elsif character.is_upper?
      original_position = alphabet_positions(character)
      original_position = original_position.join('').to_i

      shift_key = shift(original_position, shift_amount)
      
      transformed_up = back_to_letter_upper(shift_key)
      final_array.push(transformed_up)
    else
      original_position = alphabet_positions(character)
      original_position = original_position.join('').to_i

      shift_key = shift(original_position, shift_amount)
      
      transformed_down = back_to_letter_lower(shift_key)
      final_array.push(transformed_down)
    end
  end
  return final_array
end


puts "What statement to test?"
statement = gets
statement = statement.chomp

puts "Shift amount?"
shift_amount = gets
shift_amount = shift_amount.chomp

separated = []
separated = separate(statement)

final_array = []
final_array = letter_eval(final_array, separated, shift_amount)

puts final_array.flatten.join




