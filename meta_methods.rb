a = [1, 2, 3, 4, 4, 5, 8, 16, 25]

#Blocks
puts a.inject(0) { |result, element| element%2 == 0 ? result + element : result }

# procs
square = Proc.new { |x| x ** 2 }
puts [2, 4, 6].collect!(&square)

# lamba
my_lambda = lambda do |*args|
  args.each do |arg|
	puts "I saw " +arg
  end
end

my_lambda.call("a", "b", "c")

#define method
define_method :mult do |*my_arg|
    my_arg.inject(1, :*)
end

puts mult(2, 5, 10)
