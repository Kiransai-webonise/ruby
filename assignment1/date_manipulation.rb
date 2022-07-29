require 'date'

puts 'a. Print current date.'

time = Time.now
puts time

puts '
b. Print 12th Jan 2012'

puts Time.new(2012, 1, 12).strftime("%d %b %Y")

puts '
c. Add 7 days in current date'

puts (time + (3600 * 24 * 7))

puts '
d. Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.'

date1 = Date.new(2010, 4, 12)
date2 = Date.new(2011, 5, 12)

x = date2 - date1
puts x.to_i

puts '
e. Print date after 20 days from current date'

puts Date.parse(time.to_s) + 20

puts '
f. Print date in array format'

puts time.to_a