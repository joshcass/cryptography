
class Encryptor

  def self.run(message, rotation)
    letters = ("a".."z").to_a
    roto = letters.rotate(rotation)
    cipher1 = letters.zip(roto)

    caps = ("A".."Z").to_a
    caps_roto = caps.rotate(rotation)
    cipher2 = caps.zip(caps_roto)

    cipher = Hash[cipher1 + cipher2]

    message.gsub(/[a-zA-Z]/, cipher)
  end
end

class Decryptor

  def self.run(message, rotation)
    letters = ("a".."z").to_a
    roto = letters.rotate(-rotation)
    cipher1 = letters.zip(roto)

    caps = ("A".."Z").to_a
    caps_roto = caps.rotate(-rotation)
    cipher2 = caps.zip(caps_roto)

    cipher = Hash[cipher1 + cipher2]

    message.gsub(/[a-zA-Z]/, cipher)
  end
end



class EncryptionEngine

  def encrypt(message, rotation = 13)
    Encryptor.run(message, rotation)
  end

  def decrypt(message, rotation = 13)
    Decryptor.run(message, rotation)
  end

end


if __FILE__==$0
  engine = EncryptionEngine.new
  output = engine.encrypt ("My Message")
  puts output  # outputs "Zl Zrffntr"
  output2 = engine.decrypt("Zl Zrffntr")
  puts output2 # outputs "My Message"
end
