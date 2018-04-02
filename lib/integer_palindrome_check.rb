# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.nil? || number < 0
  return true if number.size == 1 || number == 0
  while number >= 10
    first_num = number
    i = 0
    until first_num < 10
      first_num /= 10
      i += 1
    end
    last_num = number % 10
    return false if first_num != last_num
    number = (number % 10**i) / 10
  end
  true
end
