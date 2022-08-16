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
class Interest
  ["kiran", "sai"].each do |action|
    define_method("take_#{action}") do |argument|
      "#{action} likes #{argument}."
    end
  end
end

interest = Interest.new
puts interest.take_kiran("Chocolate")
puts interest.take_sai("Ice Cream")
