require 'uri'
puts 'Uhr-Test'
require 'net/http'
url = URI("http://services.sharkbyte.bplaced.net/Uhr/clock/raw.php")
http = Net::HTTP.new(url.host, url.port)
request = Net::HTTP::Get.new(url)
request["cache-control"] = 'no-cache'
response = http.request(request)
time = ("Uhrzeit: " + response.read_body)
puts time
sleep(1)
