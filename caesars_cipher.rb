def caesar_cipher(string, shift_factor)
  if shift_factor <= 0
    return string if shift_factor.remainder(26).zero?

    shift_factor = shift_factor.remainder(26) + 26
  end
  shift_factor.times do
    string = string.chars.map { |char| caesar_succession(char) }.join
  end
  string
end

def caesar_succession(character)
  case character
  when /\W/, /\s/
    character
  when 'z'
    'a'
  when 'Z'
    'A'
  else
    character.succ
  end
end

p caesar_cipher('I AM VERY LONG and complicated, what gives?!', 10)
p caesar_cipher(caesar_cipher('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 3), -3)
