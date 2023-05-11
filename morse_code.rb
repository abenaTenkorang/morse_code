# frozen_string_literal: true

MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze
def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def decode_word(word)
  decoded_word = ''
  morse_chars = word.split(' ')
  morse_chars.each { |char| decoded_word += decode_char(char) }
  decoded_word
end

def decode(message)
  decoded_message = ''
  morse_words = message.split('   ')
  morse_words.each { |word| decoded_message += " #{decode_word(word)}" }
  decoded_message
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
