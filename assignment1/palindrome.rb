def palindrome sentence
    sentence_without_space = sentence.delete(' ').downcase
    palindrome = '';
    sent_length = sentence_without_space.length

    (sent_length).times { |i|
        palindrome += sentence_without_space[-i - 1].to_s
    }

    puts palindrome
    puts sentence_without_space
    puts palindrome == sentence_without_space ? 'true' : 'false'

end

palindrome "Never odd or even"