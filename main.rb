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

def display_city_names(obj)
  puts obj.keys 
end

def get_area_code(key_from_input, obj)
  obj[key_from_input]
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  input = gets.chomp.upcase 
    break if input != "Y"
    puts "Which city do you want the area code for?" 
    display_city_names(dail_book)
    puts "Enter your selection"
    city = gets.chomp.capitalize
    if dail_book.include?(city)
      puts "The area code for #{city} is #{get_area_code(city, dail_book)}"
    else
      puts "You entered an invalid city name: #{city}."
    end
end