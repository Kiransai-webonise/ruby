require 'date'

puts 'a. Print current date.'

time = Date.today
puts time.to_s

puts '
b. Print 12th Jan 2012'

puts Date.new(2012, 1, 12).strftime("%dth %b %Y")

puts '
c. Add 7 days in current date'
d = Date.today
puts ((d+7).to_s)

puts '
d. Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.'

date1 = Date.parse('12-04-2010')
date2 = Date.parse('12-05-2011')

x = date2 - date1
puts x.to_i.to_s + ' day(s)'

puts '
e. Print date after 20 days from current date'

puts ((d+7).to_s)

puts '
f. Print date in array format'

puts time.to_a
