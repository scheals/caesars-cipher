def caesar_cipher(string, shift_factor)
  if shift_factor <= 0
    return string if shift_factor.remainder(26) == 0
    shift_factor = shift_factor.remainder(26) + 26 if shift_factor.remainder(26) != 0
  end
  shift_factor.times do
    string = string.chars.map { |char| caesar_succession(char) }.join
  end
  string
end

def caesar_succession(character)
  case character
  when /\W/, /\s/
    return character
  when "z"
    return "a"
  when "Z"
    return "A"
  else
    return character.succ
  end
end

p caesar_cipher("I am not interested in being changed.", 0)
p caesar_cipher("I AM VERY LONG and complicated, what gives?!", 10)
p caesar_cipher("I  NO  LONGER  FEAST  ON  ADDITIONAL  SPACES!", 1)
p caesar_cipher("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 1)
p caesar_cipher(caesar_cipher("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 3), -3)
