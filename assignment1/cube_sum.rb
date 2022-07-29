def sum_of_cubes num_range, power
    sum = 0
    num_range.each { |arr|
        sum += arr ** power
    }
    puts sum
end

sum_of_cubes (1..4), 2