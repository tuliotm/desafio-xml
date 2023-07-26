require 'nokogiri'
require 'byebug'

xml_file = File.open("0.xml")

data = Nokogiri::XML(xml_file)

phrase0 = []
phrase1 = []
phrase2 = []
phrase3 = []

56.times do |x|
  array_element = data.xpath("//char/@c")[x]
  if x >= 0 && x <= 10
    phrase0 << array_element
  elsif x >= 11 && x <= 21
    phrase1 << array_element
  elsif x >= 22 && x <= 32
    phrase2 << array_element
  elsif x >= 33 && x <= 56
    phrase3 << array_element
  end
end

puts phrase0.join
puts phrase1.join
puts phrase2.join
puts phrase3.join
