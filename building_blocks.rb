def caesars_cipher(string, shift_num)
  cipher_string = ''
  if string.is_a?(String)
    string.each_byte { |c|
      if c == 32
      cipher_string << c.chr
      else
      ciph = c + shift_num
        if (65..90).include?(ciph) || (97..122).include?(ciph)
          cipher_string << ciph.chr
        else
          if (65..90).include?(c)
            a = (90 - c)
            b = (shift_num - a)
            newciph = (65 + b)
            cipher_string << newciph.chr
          elsif (97..122).include?(c)
            a = (122 - c)
            b = (shift_num - a)
            newciph = (97 + b)
            cipher_string << newciph.chr
          end
        end
      # some crazy math stuff goes here!
      # subtract ascii A or a position from letter's og position (in this case the c var)
      # ex: y is 121, a is 97, limits of the a-z category are 97 through 122
      # 122 is the limit therefore y + 1 yields 122
      # followed by a + 4, ideally rendering 101, or 'e'
      # if 122 - c < shift_num
      # a = (122 - c), b = (shift_num - a), 97 + b equals new shift!
      # example: a = (122 - 121), b = (5 - 1), 97 + 4 = 101 = e!
      end
      }
    puts cipher_string
  else
    puts 'Please include valid input'
  end
end

caesars_cipher('My name iS bob', 15)
caesars_cipher('how IS your CAT', 3)
caesars_cipher('i am orb', 8)
caesars_cipher('TORSEY THE TORSO HORSE', 7)
