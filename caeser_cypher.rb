class Encrypt
    attr_reader :letters
    def initialize
        @letters = ('a'..'z').to_a
        @encrypted_string = ""
       
    end

   
    def caeser(message, shift) 

    #   string into array of letters 
        # @message.split("") OR @message.chars
        #->["c", "a", "t"]

        # loop over message string, find index positions

        message.chars.each do |char|
        if char.downcase == char
        
            index_old = @letters.find_index(char)
            index_new = (index_old + shift) % @letters.count
            @encrypted_string  += @letters[index_new]
        
        else
            index_old = @letters.find_index(char.downcase)
            index_new = (index_old + shift) % @letters.count
            @encrypted_string  += @letters[index_new].upcase
        end

        end
        @encrypted_string
    end
    
end

encrypt = Encrypt.new
print encrypt.caeser("Catz", 2)
