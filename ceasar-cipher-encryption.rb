

def caesar_cipher(string, shift)
    $result = ""

    upper_case_ascii_range = ('A'..'Z').map(&:ord)
    lower_case_ascii_range = ('a'..'z').map(&:ord)
    

    for character in string.chars
        char_ascii = character.ord
        extended_ascii = char_ascii + shift
        
        if upper_case_ascii_range.include?(char_ascii)
            if upper_case_ascii_range.include?(extended_ascii)
                $result << extended_ascii.ord
            else
                # done to get the number of characters we have to count to get our encoded character
                reminder = extended_ascii - upper_case_ascii_range[-1]

                # find the index of the character, we have to remember about zero index here.
                reminder_index = reminder - 1

                $result << upper_case_ascii_range[reminder_index].ord
            end
            
        elsif lower_case_ascii_range.include?(char_ascii)
            if lower_case_ascii_range.include?(extended_ascii)
                $result << extended_ascii.ord
            else
                # done to get the number of characters we have to count to get our encoded character
                reminder = extended_ascii - lower_case_ascii_range[-1]

                # find the index of the character, we have to remember about zero index here.
                reminder_index = reminder - 1
                $result << lower_case_ascii_range[reminder_index].ord
            end
        else
             $result << character
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





