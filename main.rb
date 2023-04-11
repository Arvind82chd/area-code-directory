dail_book = {
    'Newyork' => '212',
    'Newbrunswick' => '732', 
    'Edison' => '908',
    'Plainsboro' => '609',
    'Sanfrancisco' => '301',
    'Miami' => '305',
    'Paloalto' => '650',
    'Evanston' => '847',
    'Orlando' => '407',
    'Lancaster' => '717'
}

def get_city_names(dail_book)
  dail_book.each do |key, value|
      puts key
  end
end

def get_area_code(key_from_input, obj)
  obj.each do |key, value|
    if key_from_input == key
      puts "The area code for #{key_from_input} is #{value}"
    end
  end
end

puts "Do you want to lookup an area code based on a city name? (Y/N)"
input = gets.chomp.upcase 

if input == "Y"
  puts "Which city do you want the area code for?" 
  get_city_names(dail_book)
  puts "Enter your selection"
  city = gets.chomp.capitalize
  get_area_code(city, dail_book)
else
    
end