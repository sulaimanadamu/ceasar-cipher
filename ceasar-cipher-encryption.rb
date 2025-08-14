

def caesar_cipher(string, shift)
    $result = ""

    upper_case_ascii_range = ('A'..'Z').map(&:ord)
    lower_case_ascii_range = ('a'..'z').map(&:ord)
    ascii_characters = [ upper_case_ascii_range, lower_case_ascii_range].flatten()

    for character in string.chars
        index = ascii_characters.index(character.ord)
        
        if index.nil?
             $result << character
        else
            code_index = index + shift
            coded_character = ascii_characters[code_index]
            $result << coded_character.ord
        end
    end 
    return $result
end

# print "Enter string to encode: "
# print " "
# string = gets.chomp

# print "Shift by: "
# print " "
# shift = gets.chomp

p caesar_cipher("What a string!", 5)





