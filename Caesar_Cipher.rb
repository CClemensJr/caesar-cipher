

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
end

use_the_cipher
