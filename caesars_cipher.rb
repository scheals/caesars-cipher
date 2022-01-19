def caesar_cipher(string, shift_factor)
  ciphered_string = ""
  broken_down_string = string.split(" ").map { |word| word.chars }
  shift_factor.times do
    broken_down_string = broken_down_string.map { |word| word.map { |char| char.succ } }
    ciphered_string = broken_down_string.map { |word| word.join("") }.join(" ")
  end
  ciphered_string
end

p caesar_cipher("Try me out!", 2)
