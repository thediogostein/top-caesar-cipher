def encrypt(string, key)

    ascii_arr = string.chars.map do |item|
        if item.match(/[a-zA-Z]/)
            item.ord
        else 
            item
        end
    end

    ascii_shifted_arr = ascii_arr.map do |item|
        if item.is_a?(Numeric)

            result = item + key

            if result > 90 && result < 97
                surplus = result - 90
                result = surplus + 64
                
            elsif result > 122
                surplus = result - 122
                result = surplus + 96
            else
                result
            end

        else
            item
        end
        
    end

    string_shifted_arr = ascii_shifted_arr.map do |item|
        if item.is_a?(Numeric)
            item = item.chr
        else
            item
        end
    end

    string_shifted_arr.join('')
end

p encrypt('What a string', 5)