class  num
  @@class_neme = "num"

  def initialize
    @name = nil
  end

  def show()
    puts @name
  end

  def self.getName()
    @@class_name
  end
end
num = num.new()
num.setname("chida")
if i % 100 == 0 then
num.show()
puts num.getName()
for i in 1..100 do
  if i % 3 == 0 and i % 5 == 0 then
    puts "FizzBuzz"
  elsif i % 3 == 0 then
    puts "Fizz"
  elsif i % 5 == 0 then
    puts "Buzz"
  else
    puts i
  end
end