# frozen_string_literal: true

require_relative 'widget_model'

puts "\n:::::::::::::::::::::::::::::::::::::::\n"
puts "\n::::::::::: WIDGET CHALLENGE ::::::::::\n"
puts "\n:::::::: RUBY REVISION SESSION ::::::::\n"
puts "\n:::::::::::::::::::::::::::::::::::::::\n"

######################################################
#### PART 1
######################################################

puts "\nGetting an array of 100 widget objects..."
widgets_array = WidgetModel::WidgetManager.generate_widgets_array

puts "\nShow the number of widgets in the array..."
puts widgets_array.length
# tasks...
#...

puts
puts "\nPrinting all widgets..."
widgets_array.each do |w|
    puts w
end
puts
#######################################################

puts
puts "\nPrinting all widgets and indexes..."
widgets_array.each_with_index do |w,index|
    puts "index: #{index}, #{w}"
end
puts
#######################################################

puts
puts "\nAccumulating the valueaud of all widgets..."
valueaud_total = 0
widgets_array.each do |w|
    valueaud_total += w.valueaud
end
puts "valueaud_total: #{valueaud_total}"
#######################################################

puts
puts "\nIncrementing valueaud of all widgets..."
widgets_array.each do |w|
    w.valueaud += 1
end
puts
#######################################################

puts
puts "\nIncrementing valueaud of all widgets by 1 where weightgms is greater than 2..."
widgets_array.each do |w|
    if w.weightgms > 2
        w.valueaud += 1
    end
end
puts
#######################################################

puts
puts "\nIncrementing valueaud of all widgets by 1 where heightcms is between 10(inclusive) and 15(exclusive)..."
widgets_array.each do |w|
    if w.heightcms >= 10 and w.heightcms < 15
        w.valueaud += 1
    end
end
puts
#######################################################

puts
puts "\nGetting all widgets where the name includes the string 'widget'. Return the results in a new array (non-destructive)...."
new_array = widgets_array.select do |w|
    w.name.include?('widget')
end
puts
#######################################################

puts
puts "\nGetting all widgets where the name includes the string 'widget' and the description contains the string 'curious'. Return the results in a new array (non-destructive)..."
new_array = widgets_array.select do |w|
    w.name.include?('widget') and w.description.include?('curious')
end
puts
#######################################################

puts
puts "\nReducing the collection of widgets to only those where the name includes the string 'widget' and the description contains the string 'ous' and lengthcms is less than 50 (destructive)..."
new_array = widgets_array.select do |w|
    w.name.include?('widget') and w.description.include?('ous') and w.lengthcms < 50
end
puts
#######################################################

widgets_array = WidgetModel::WidgetManager.generate_widgets_array
puts "\nCopying the lengthcms of each widget into a new array...."
new_array = widgets_array.map do |w|
    w.valueaud += 100
end
puts "Sorting the array into ascending order (destructive)..."
new_array.sort!
puts "Printing the sorted new array..."
puts new_array
puts "Accumulate the total of all values in the new array..."
puts "Accumulated total: #{new_array.sum}"
puts "Decrementing the largest value by 1..."
new_array[-1] -= 1
puts "Largest valueaud = #{new_array[-1]}"
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
        puts "key: #{key}, value: #{value}"
    end
end
#######################################################

puts "\nCopying to a new array where valueaud > 8..."
new_array = widgets_array_of_hash.select do |w|
    w[:valueaud] > 8
end
puts "Printing the new array..."
new_array.each do |i|
    puts i
end
puts "Accumulating the total valueaud of the new array..."
valueaud_total = 0
new_array.each do |wh|
    valueaud_total += wh[:lengthcms]
end
puts "valueaud_total = #{valueaud_total}"
#######################################################

puts "\nCopying to a new array where valueaud > 3 and lengthcms < 10..."
new_array = widgets_array_of_hash.select do |w|
    w[:valueaud] > 3 and w[:lengthcms] < 10
end
puts "Printing the new array..."
new_array.each do |i|
    puts i
end 
puts "Accumulating the total valueaud and lengthcms of the new array..."
valueaud_total = 0
lengthcms_total = 0
new_array.each do |wh|
    valueaud_total += wh[:valueaud]
    lengthcms_total += wh[:lengthcms]
end
puts "valueaud_total = #{valueaud_total}"
puts "lengthcms_total = #{lengthcms_total}"
#######################################################

puts "\n::::::::::::::::::::::::::::::::::::\n"
puts "\n:::::::::::::: fin :::::::::::::::::\n"
puts "\n::::::::::::::::::::::::::::::::::::\n"

# widgets_array = WidgetDataSet.make_widget_array_data_set
# puts "\nCopying the lengthcms of each widget into a new array...."
# new_array = widgets_array.map do |w|
#     w.valueaud += 100
# end
# puts "Sorting the array into ascending order (destructive)..."
# new_array.sort!
# puts "Printing the sorted new array..."
# puts new_array
# puts "Accumulate the total of all values in the new array..."
# puts "Accumulated total: #{new_array.sum}"
# puts "Decrementing the largest value by 1..."
# new_array[-1] -= 1
# puts "Largest valueaud = #{new_array[-1]}"
