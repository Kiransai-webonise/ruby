# blocks

a = [1, 2, 3, 4, 4, 5, 8, 16, 25];
even_sum = 0

#Blocks

a.each { |i| even_sum += i if (i%2 == 0) }

puts even_sum

#lambdas

even_sum1 = -> (arr) {
    even_sum = 0
    arr.each {|i| even_sum += i if (i%2 == 0) }

    return even_sum
}
puts even_sum1.call a


even_sum1 = Proc.new { |arr|
    even_sum = 0
    arr.each {|i| even_sum += i if (i%2 == 0)}
    puts even_sum
}

puts even_sum1.call a
#procs

