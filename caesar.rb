def caesar_cipher(str, offset)
  result = str.bytes.map do |char|
    if char.between?(65,90) 
      char = (char + offset - 65) % 26 + 65
      char.chr
    elsif char.between?(97,122)
      char = (char + offset - 97) % 26 + 97
      char.chr
    else
      char.chr
    end
  end
  
  p result = result.join('')
end

caesar_cipher("What a string!", 5)
