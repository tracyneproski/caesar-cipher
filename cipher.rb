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

def letter?(char)
  char.match?(/[[:alpha:]]/)
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

'''
This may come in handy later
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


def shift(letter, shift_amount = 0)
  original_number = alphabet_positions(letter)
  new_number = original_number + shift_amount
  if new_number >= 27
    new_number = new_number - 26
  end  
end



def statement_array(statement)
  statement_split = statement.split
  return statement_split
end


def letter_eval(statement_array)
  statement_array.each do |character|
    if character.letter? == false,
      character.push(Array.new())
    else
      return character
    end
  end
end






def caesar_cipher(statement, shift_amount)




