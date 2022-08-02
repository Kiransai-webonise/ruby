str1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.";
str2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.";

#a
puts "a. Find occurrence of RUBY from string 1?"

puts str1.scan("RUBY").count

puts '
b. Find the position where RUBY occurs in the string 1.'

puts (0..str1.length).find_all { |i| str1[i,4] == 'RUBY'}

puts '
c. Create array of words in string 1 & print them using a recursive function?'
split_str1 = str1.split(' ')

def word_arr i = 0, split_str1
    return if split_str1.length == i
    puts split_str1[i]
    word_arr(i + 1, split_str1)
end
word_arr(0, split_str1)

puts '
d. Capitalise string 1'

puts split_str1.map { |word| word.capitalize }.join(' ')

puts '
e. Combine string 1 & 2?'

puts str1 + str2

puts '
f. Cut the string 1 into 4 parts & print it.'

puts str1.split(' ', 4)

puts '
g. Divide the string 1 by occurrences of ".". Combine the array in reverse word sequence'

split_str1 = str1.split('.')
reverse_str = ""
split_str1.length.times { |i| reverse_str += split_str1[i].reverse}
reverse_str

puts '
h. Remove the HTML characters from string.'

puts str1.gsub( %r{</?[^>]+?>}, '' )

puts '
j. '

def strlen str
    i=0
    while !str[i].nil? do
        i+= 1
    end
    return i
end
puts "string 1 count:" + strlen(str1).to_s
puts "string 2 count:" + strlen(str2).to_s
