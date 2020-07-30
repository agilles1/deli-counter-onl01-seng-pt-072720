require 'pry'
def line(array)
    if array.length > 0
        current_line = []
        hash = Hash.new
        array.each_with_index {|name, index| 
        hash[name] = index + 1}
        hash.each {|name, index| current_line << "#{index}. #{name}"}
        puts "The line is currently: " + current_line.join(" ")
    else 
        puts "The line is currently empty."
    end
end

def take_a_number(array, name)
    line_plus = array.push(name)
    index = line_plus.index(name) + 1
    puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(array)
   #use array[0] in string then remove that item from array and repeat. Once empty new string.
   if array.empty? == false
    line = array
    puts "Currently serving #{line[0]}."
    line.shift
   else puts "There is nobody waiting to be served!"
   end
end