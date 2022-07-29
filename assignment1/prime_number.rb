def prime_numbers num_arr
    num_arr.each {|num|
        count = 0
        2.upto(num) do |i|
            if (num%i==0)
                count+=1
            end
        end
        if (count <= 1)
            puts num
        end
    }
end

prime_numbers [1, 2, 3, 4, 7, 6, 9, 11, 12, 13]