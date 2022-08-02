# Compute the sum of cubes for a given range a through b. Write a method called sum_of_cubes to accomplish this task. Example Given range 1 to 3 the method should return 36.
def sum_of_cubes num_range
    sum = 0
    num_range.each { |arr|
        sum += arr ** 3
    }
    sum
end

sum_of_cubes (1..4)

# Given an Array, return the elements that are present exactly once in the array. You need to write a method called non_duplicated_values to accomplish this task. Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def non_duplicated_values dupl_arr
    uniq_arr = [];
    dupl_arr.each { |val|
        if !uniq_arr.include? val
            uniq_arr = uniq_arr.push(val)
        else
            uniq_arr.delete(val)
        end
    }
    uniq_arr;
end

non_duplicated_values [1,2,2,3,3,4,5]

# Given a sentence, return true if the sentence is a palindrome. You are supposed to write a method palindrome? to accomplish this task. Note: Ignore whitespace and cases of characters. Example: Given ""Never odd or even"" the method should return true.

def palindrome sentence
    sentence_without_space = sentence.delete(' ').downcase
    palindrome = '';
    sent_length = sentence_without_space.length

    (sent_length).times { |i|
        palindrome += sentence_without_space[-i - 1].to_s
    }

    palindrome == sentence_without_space ? 'true' : 'false'
end

palindrome "Never odd or even"

# 9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9, 297 is also Kaprekar number since 297 ^ 2 = 88209 and 88 + 209 = 297. In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. Find if a given number is a Kaprekar number.

def kaprekar(k)
    ks = k**2
    lenf = (ks.to_s.length)-1
    lenh = (ks.to_s.length / 2) - 1
    a = ks.to_s[0..lenh].to_i
    b = ks.to_s[lenh+1..lenf].to_i
    k==(a+b) ? 'Kaprekar': 'Not Kaprekar'
end

kaprekar 297

# Print prime numbers from the given array
def prime_numbers num_arr
    prime_arr = []
    num_arr.each do |num|
        count = 0
        2.upto(num/2) do |i|
            if (num%i==0)
                count+=1
            end
        end
        if (count.zero?)
            prime_arr << num
        end
    end
    prime_arr
end

prime_numbers [1, 2, 3, 4, 5, 7, 6, 9, 11, 12, 13]

# Ruby program to find the prime numbers 
# from the array

arr = [12,45,23,39,37];

i = 0;
j = 0;
flag = 0;
        
print "Prime Numbers are:\n";
while(i<arr.size)
    flag = 0;
    j=2;
    
    while(j<arr[i]/2)
        if(arr[i]%j==0)
            flag=1;
        end
        j=j+1
    end

    if(flag == 0)
        p arr[i]," ";
    end
    i=i+1		
end


# Write a program for fuel indication. Ex: 0 -> Out of fuel, 1-10 -> Low, Please fill, 11-30 -> Good for now, 31-50 -> Almost Full, > 50 -> Full

def fuel_indication n
    if (n == 0)
        return 'Out of fuel'
    elsif (1..10).include? n
        return 'Low, Please fill'
    elsif (11..30).include? n
        return 'Good for now'
    elsif (30..50).include? n
        return 'Almost Full'
    elsif (n > 50)
        return 'Full'
    end
end

fuel_indication 11

# Swap the given values(without the third variable)

a = 10
b = 20

a = a * b
b = a/b
a = a/b

# Program to Randomly Select an Element From the Array

arr = [1, 5, 6, 8,0]

arr[rand(arr.length)]

# Program to Count the Number of Each Vowel

def vowel_count rand_str
    vow_cnt = {};
    vowels = ['a', 'e', 'i', 'o', 'u']
    rnd_str_count = rand_str.length

    vowels.each { |i|
        vow_cnt[i] = (0..rand_str.length).find_all { |j| rand_str[j,1] == i}.count
    }

    vow_cnt
end

vowel_count "My name is Kiran"

# Program to Sort a Hash by Value

def hash_sort_value h
    inv_hash = h.invert
    inv_arr_keys = inv_hash.keys
    sort_hash = {}

    inv_arr_keys.each do |j, v|
        0.upto(inv_arr_keys.size-2) do |i|
            if inv_arr_keys[i] < inv_arr_keys[i+1]
                inv_arr_keys[i], inv_arr_keys[i+1] = inv_arr_keys[i+1], inv_arr_keys[i]
            end
        end
    end

    inv_arr_keys.each do |i|
        sort_hash[i] = inv_hash[i]
    end

    sort_hash.invert
end

hash_sort_value({"a" => 2, "b" => 1, "c" => 3})

# Program to Convert Two Arrays Into a Hash

def arr_merge arr1, arr2
    if arr1.length < arr2.length
        arr2, arr1 = arr1, arr2
    end
    merged_arr = {}

    0.upto(arr1.length - 1) do |i|
        merged_arr[arr1[i]] = arr2[i].nil? ? '' : arr2[i]
    end

    merged_arr
end

arr_merge [1, 2, 3, 4], ['a', 'b', 'c', 'd', 'e']
