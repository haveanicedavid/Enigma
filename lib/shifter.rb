
class Shifter

  def initialize(shift, character_map = "abcdefghijklmnopqrstuvwxyz0123456789 .,")
    i             = shift % character_map.size
    @encrypt_map  = character_map[i..-1] + character_map[0...i]
    @decrypt_map  = character_map
  end

  def encrypt(string)
    string.tr(@decrypt_map, @encrypt_map)
  end

  def decrypt(string)
    string.tr(@encrypt_map, @decrypt_map)
  end

end
