def encrypt_message
  @encrypted_message = @message.clone

  @message.each_index do |i|
    @alphabet.each_index do |j|

      if @message[i] == @alphabet[j]
        @encrypted_message[i] = @shifted_alphabet[j]
      end
    end
  end

  puts "Encrypted Message: #{@encrypted_message.join(" ")}"
end

#******************
#******************

def shift_alphabet
  @alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
               'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

  @shifted_alphabet = @alphabet.clone
  (0..@shift_factor-1 ).each { @shifted_alphabet.push(@shifted_alphabet.shift) }
end

#******************
#******************

def user_input
  puts "\n\nWelcome to the Encryptonomicron."
  print "\n\nMessage: "
  @message = $stdin.gets.chomp.downcase!.strip.split("")

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

  shift_alphabet

  encrypt_message
end

use_the_cipher
