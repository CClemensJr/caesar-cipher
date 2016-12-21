def encrypt_message
  @encrypted_message = @message.clone

  @encrypted_message.each_index do |letter|
    if @encrypted_message[letter].ord.between?(65,90) || @encrypted_message[letter].ord.between?(97, 122)
      @encrypted_message[letter] = @encrypted_message[letter].ord + @shift_factor

      if @encrypted_message[letter].between?(91,96) || @encrypted_message[letter] > 122
        @encrypted_message[letter] -= 26
      end

      @encrypted_message[letter] = @encrypted_message[letter].chr

    end
  end

  puts "Encrypted Message: #{@encrypted_message.join("")}"
end

#******************
#******************

def user_input
  puts "\n\nWelcome to the Encryptonomicron."
  print "\n\nMessage: "
  @message = $stdin.gets.chomp.strip.split("")

  print "\n\nShift factor: "
  @shift_factor = $stdin.gets.chomp.to_i

  correct_input = false

  while correct_input == false
    if (@shift_factor < 1 || @shift_factor > 26)
      puts "The shift factor must be between 1 and 26."

      print "\n\nShift factor: "
      @shift_factor = $stdin.gets.chomp.strip.to_i
    else
      return correct_input = true
    end
  end

end

#******************
#******************

def use_the_cipher
  user_input

  encrypt_message
end

use_the_cipher
