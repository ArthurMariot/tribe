require 'json'
require 'open-uri'

puts 'running'
puts 'running'
puts 'running'
puts 'running'
puts 'running'
lat = 0
long = -58
url = "http://api.timezonedb.com/v2.1/get-time-zone?key=QSETAOLPXC13&format=json&by=position&lat=#{lat}lng=#{long}"


response = open(url).read
to_display = JSON.parse(response)

puts 'running'
puts 'running'
puts 'running'
puts 'running'
puts 'running'

puts to_display
