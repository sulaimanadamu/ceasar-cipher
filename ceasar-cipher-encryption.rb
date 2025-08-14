
def caesar_cipher(string, shift)
   
    upper_case_ascii_range = ['A'..'Z'].map(&:ord)
    lower_case_ascii_range = ['a'..'z'].map(&:ord)

    result = ""
    
        

    for character in string
        character_ascii = character.ord
        if upper_case_ascii_range.include? (character_ascii + shift)
            result += character_ascii.ord
        elsif lower_case_ascii_range.include? (character_ascii + shift)
            result += character_ascii.ord
        end
    end
end

print "Enter string to encode: "
print " "
string = gets.chomp

print "Shift by: "
print " "
number = gets.chomp







