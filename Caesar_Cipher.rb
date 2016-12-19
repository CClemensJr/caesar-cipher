def shift_alphabet
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
              'o', 'p', 'q', 'u', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

  shifted_alphabet = alphabet.clone
  (0..@shift_factor - 1).each { shifted_alphabet.push(shifted_alphabet.shift) }
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

  shift_alphabet
end

use_the_cipher
