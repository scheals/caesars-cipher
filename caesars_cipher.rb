def caesar_cipher(string, shift_factor)
  if shift_factor <= 0
    return string if shift_factor.remainder(26) == 0
    shift_factor = shift_factor.remainder(26) + 26 if shift_factor.remainder(26) != 0
  else
  end
  ciphered_string = ""
  broken_down_string = string.split(" ").map { |word| word.chars }
  shift_factor.times do
    broken_down_string = broken_down_string.map { |word| word.map { |character| caesar_succession(character) } }
    ciphered_string = broken_down_string.map { |word| word.join("") }.join(" ")
  end
  ciphered_string
end

def caesar_succession(character)
  case character
  when /\W/
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
p caesar_cipher("I  FEAST  ON  ADDITIONAL  SPACES!", 1)
p caesar_cipher("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 1)
p caesar_cipher(caesar_cipher("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 3), -3)
