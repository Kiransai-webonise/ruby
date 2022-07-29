def fuel_indication n
    if (n == 0)
        puts 'Out of fuel'
    elsif (1..10).include? n
        puts 'Low, Please fill'
    elsif (11..30).include? n
        puts 'Good for now'
    elsif (30..50).include? n
        puts 'Almost Full'
    elsif (n == 50)
        puts 'Full'
    end
end

fuel_indication 11