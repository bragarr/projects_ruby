def isPalindrome word
    return true if word.length <= 1
    return false if word[0]!=word[-1]
    isPalindrome(word[1, word.length-2])
end

puts "Palindrome word/Sentences"
puts "Type 'q' to Quit the application"
print "Type a word or sentence to check: "
word = gets.chomp.downcase.split(/[\s,'-]/).join.split("")
puts "Is Palindrome: #{isPalindrome(word)}"
