
class Encryptor

  def self.run(message, rotation)
    part1 = ("a".."z").to_a
    part2 = part1.rotate(rotation)
    cipher1 = part1.zip(part2)

    part3 = ("A".."Z").to_a
    part4 = part3.rotate(rotation)
    cipher2 = part3.zip(part4)

    cipher = Hash[cipher1 + cipher2]

    message.gsub(/[a-zA-Z]/, cipher)
  end
end

class Decryptor

end


class EncryptionEngine

  def encrypt(message, rotation = 13)
    Encryptor.run(message, rotation)
  end

end


#
# engine = EncryptionEngine.new
# output = engine.encrypt ("My Message")
# puts output  # outputs "Zl Zrffntr"
# output2 = engine.decrypt("Zl Zrffntr")
# puts output2 # outputs "My Message"

