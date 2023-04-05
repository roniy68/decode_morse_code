# hash with morse code and thier equivalent chars as key value pairs

MORSE_HASH =
  { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-.....' => '6',
    '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0' }.freeze

# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_morse(message)
  words = message.split(/   /)
  arr = []
  words.each do |word|
    arr.push decode_word(word)
  end
  arr.join(' ')
end

def decode_word(word)
  chars = word.split(/ /)
  str2 = ''
  chars.each do |character|
    str2 += decode_char(character)
  end
  str2
end

def decode_char(string_char)
  MORSE_HASH[string_char]
end

puts decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
