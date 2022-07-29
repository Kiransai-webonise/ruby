def vowel_count rand_str
    vow_cnt = {};
    vowels = ['a', 'e', 'i', 'o', 'u']
    rnd_str_count = rand_str.length

    vowels.each { |i|
        vow_cnt[i] = (0..rand_str.length).find_all { |j| rand_str[j,1] == i}.count
    }

    puts vow_cnt
end

vowel_count "My name is Kiran"