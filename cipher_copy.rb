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


def back_to_letter(shift_key)
  #original_letter = alphabet_positions(letter)
  #original_letter = original_letter.join('').to_i
  #shift_key = shift_key.to_i
  new_letter = []
  new_letter.push(shift_key + 96)
  transformed_new_letter = new_letter.map {|x| x.chr}
  return transformed_new_letter
end


def shift(original_position, shift_amount = 0)
  #original_number = alphabet_positions(letter)
  #original_number = original_number.join('').to_i
  shift_amount = shift_amount.to_i
  
  new_number = original_position + shift_amount
end


def separate(statement)
  string_array = statement.split('')
end


def letter_eval(final_array, separated, shift_amount = 0)
  separated.each do |character|
    if character.match?(/[[:alpha:]]/) == false
      final_array.push(character)
      '''
    elsif character
      original_position = alphabet_positions(character)
      original_position = original_position.join('').to_i

      shift_key = shift(original_position, shift_amount)
      shift_key = shift_key.to_i

      transformed = back_to_letter(original_position, shift_key)
      final_array.push(transformed)
      '''
    else
      original_position = alphabet_positions(character)
      original_position = original_position.join('').to_i

      shift_key = shift(original_position, shift_amount)
      #shift_key = shift_key.to_i

      transformed = back_to_letter(shift_key)
      final_array.push(transformed)
    end
  end
  return final_array
end


'''
This may come in handy later

def case_correct
  if string.is_lower?
    string.bytes.map{|b| b + 96}
  elsif string.is_upper?
    string.bytes.map{|b| b + 64}
  end
end

def letter?(char)
  char.match?(/[[:alpha:]]/)
end


def azwrap(new_number)
  if new_number >= 27
    new_number = new_number % 26
      if new_number == 0
        new_number = 26
      end
  end 
  return new_number 
end


def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('')

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")


>caesar_cipher("what a string!", 5)
=> "Bmfy f xywnsl!"



'''
puts "What statement to test?"
statement = gets
statement = statement.chomp
puts "Shift amount?"
shift_amount = gets
shift_amount = shift_amount.chomp
separated = []
#separated = separate(statement.chomp)
separated = separate(statement)


final_array = []
final_array = letter_eval(final_array, separated, shift_amount)

#puts "This is final_array\n"

puts final_array.flatten.join


'''
puts "This is separated\n"
puts separated

puts "What letter to test?"
letter = gets
letter = letter.chomp
puts "Shift amount?"
shift_amount = gets
shift_amount = shift_amount.chomp

new_number = shift(letter, shift_amount)
azwrap(new_number)


puts "This is new_number\n"
puts new_number
puts "This is azwrapped\n"
puts azwrap(new_number)
'''
#def caesar_cipher(statement, shift_amount)




