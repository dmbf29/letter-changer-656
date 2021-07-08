ALPHABET = Array('A'..'Z')

# def encrypt(text)
#   text.chars.map { |letter| ALPHABET.index(letter) ? ALPHABET[ALPHABET.index(letter) - 3] : letter }.join
# end


def encrypt(text)
  text.chars.map do |letter|
    letter_index = ALPHABET.index(letter)
    letter_index ? ALPHABET[letter_index - 3] : letter
  end.join
end
