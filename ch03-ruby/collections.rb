# each

x = ['apple','cherry','apple','banana']

x.each do |fruit|
  puts fruit
end

# In what class is the method getting called?
x.method(:each)

# Do other classes define each?
{}.method(:each)
file = File.open("collections.rb")
file.method(:each)

# Collection idioms

x.sort # => ['apple','apple','banana','cherry']  
x.uniq.reverse # => ['banana','cherry','apple']
x.reverse!  # => modifies x
x.map do |fruit|
  fruit.reverse
end.sort 
  # => ['ananab','elppa','elppa','yrrehc']
x.collect { |f| f.include?("e") }
x.any? { |f| f.length > 5 }
