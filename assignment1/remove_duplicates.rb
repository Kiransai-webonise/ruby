def non_duplicated_values dupl_arr
    uniq_arr = [];
    dupl_arr.each { |val|
        if !uniq_arr.include? val
            uniq_arr = uniq_arr.push(val)
        else
            uniq_arr.delete(val)
        end
    }
    p uniq_arr;
end

non_duplicated_values [1,2,2,3,3,4,5]