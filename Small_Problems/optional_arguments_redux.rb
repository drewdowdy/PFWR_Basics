require 'date'

puts Date.civil
puts Date.civil(2016) 
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# https://ruby-doc.org/3.2.2/exts/date/Date.html#method-c-new

#=> 2023-08-01
#=> 2016-01-01
#=> 2016-05-01
#=> 2016-05-13