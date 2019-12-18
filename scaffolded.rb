# frozen_string_literal: true

require_relative 'widget_model'

puts "\n:::::::::::::::::::::::::::::::::::::::\n"
puts "\n::::::::::: WIDGET CHALLENGE ::::::::::\n"
puts "\n:::::::: RUBY REVISION SESSION ::::::::\n"
puts "\n:::::::::::::::::::::::::::::::::::::::\n"

######################################################
#### PART 1 ##########################################
######################################################

puts "\nGetting an array of 100 widget objects..."
widgets_array = WidgetModel::WidgetManager.generate_widgets_array

puts "\nShow the number of widgets in the array..."
puts widgets_array.length
# tasks...
#...

puts "\nPrinting all widgets..."
widgets_array.each do |w|
    # Your code here...
end

#######################################################

puts "\nPrinting all widgets and indexes..."
widgets_array.each_with_index do |w, index|
    # Your code here...
end
#######################################################

puts "\nAccumulating the valueaud of all widgets..."
valueaud_total = 0
# Your code here...
puts "valueaud_total: #{valueaud_total}"
#######################################################

puts "\nIncrementing valueaud of all widgets..."
# Your code here...
#######################################################

puts "\nIncrementing valueaud of all widgets by 1 where weightgms is greater than 2..."
# Your code here...
#######################################################

puts "\nIncrementing valueaud of all widgets by 1 where heightcms is between 10(inclusive) and 15(exclusive)..."
# Your code here...
#######################################################

puts "\nGetting all widgets where the name includes the string 'widget'. Return the results in a new array (non-destructive)...."
new_array = widgets_array.select do |w|
    # Your code here...
end
#######################################################

puts "\nGetting all widgets where the name includes the string 'widget' and the description contains the string 'curious'. Return the results in a new array (non-destructive)..."
# Your code here...
#######################################################

puts
puts "\nReducing the collection of widgets to only those where the name includes the string 'widget' and the description contains the string 'ous' and lengthcms is less than 50 (destructive)..."
# Your code here...
#######################################################

widgets_array = WidgetModel::WidgetManager.generate_widgets_array
puts "\nCopying the lengthcms of each widget into a new array...."
# Your code here...
puts "Sorting the array into ascending order (destructive)..."
# Your code here...
puts "Printing the sorted new array..."
# Your code here...
puts "Accumulate the total of all values in the new array..."
puts "Accumulated total: # Your code here..."
puts "Decrementing the largest value by 1..."
# Your code here...
puts "Largest valueaud = # Your code here..."
#######################################################


######################################################
# PART 2 #############################################
######################################################

puts "\nGetting the 100 generated widgets array of hash..."
widgets_array_of_hash = WidgetModel::WidgetManager.generate_widgets_as_array_of_hash

puts "\nShow the number of widgets in the array of hash..."
puts widgets_array_of_hash.length
# tasks...


#######################################################

puts "\nprinting keys and values..."
widgets_array_of_hash.each do |w|
    w.each do |key, value|
        # Your code here...
    end
end
#######################################################

puts "\nCopying to a new array where valueaud > 8..."
new_array = widgets_array_of_hash.select do |w|
    # Your code here...
end
puts "Printing the new array..."
# Your code here...
puts "Accumulating the total valueaud of the new array..."
valueaud_total = 0
# Your code here...
puts "valueaud_total = # Your code here..."
#######################################################

puts "\nCopying to a new array where valueaud > 3 and lengthcms < 10..."
# Your code here...
puts "Printing the new array..."
# Your code here...
puts "Accumulating the total valueaud and lengthcms of the new array..."
valueaud_total = 0
lengthcms_total = 0
# Your code here...
puts "valueaud_total = # Your code here..."
puts "lengthcms_total = # Your code here..."
#######################################################

puts "\n::::::::::::::::::::::::::::::::::::\n"
puts "\n:::::::::::::: fin :::::::::::::::::\n"
puts "\n::::::::::::::::::::::::::::::::::::\n"
