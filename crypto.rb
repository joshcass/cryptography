
class Encryptor

@letters = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26}


def encrypt(message)

  message.chars.map do |key|
    (letters[:key] + 13) % 26
  end



  new_key = []
  new_word =[]
  message.chars.each do |letter|
    @letters.each do |key , value|
      if letter == value
        new_key << (key + 13) % 26
      end
    end
   end
    new_key.each do |key| #values = letters
      letter = @letters[key]
      new_word << letter
    end
    solution = new_word.flatten.join
    puts "#{solution}"
end

end

class Decryptor

  @letters = { 1 => "a", 2 => "b", 3 => "c", 4 => "d", 5 => "e", 6 => "f", 7 => "g", 8 => "h", 9 => "i", 10 => "j", 11 => "k", 12 => "l", 13 => "m", 14 =>"n", 15 => "o", 16 => "p", 17 => "q", 18 => "r", 19 => "s", 20 => "t", 21 => "u", 22 => "v", 23 => "w", 24 => "x", 25 => "y", 26 => "z"}

  def self.decryptor
  word = "m"
  new_key = []
  new_word = []
  word.chars.each do |letter|
    @letters.each do |key , value|
      if letter == value
        new_key << (key * 26) / 13
      end
    end
    new_key.each do |key| #values = letters
      letter = @letters[key]
      new_word << letter
    end
    solution = new_word.flatten.join
    puts "#{solution}"
  end
  end
end


class EncryptionEngine
  def initialize
    message
  end

  def encrypt(engine)
    message = engine.encryptor
  end

end

class Fuck

end



Encryptor.new.encrypt("hello")


#
# engine = EncryptionEngine.new
# output = engine.encrypt ("My Message")
# puts output  # outputs "Zl Zrffntr"
# output2 = engine.decrypt("Zl Zrffntr")
# puts output2 # outputs "My Message"

