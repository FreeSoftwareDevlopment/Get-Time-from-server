require 'uri'
require 'net/http'
test = 0
url = URI("http://services.sharkbyte.bplaced.net/Uhr/clock/raw.php")
http = Net::HTTP.new(url.host, url.port)
request = Net::HTTP::Get.new(url)
request["cache-control"] = 'no-cache'
request["Postman-Token"] = '4e13bee6-b68d-4b10-952b-9d0a3ff22746'
while (test != 12)
puts("Test no " + test)
response = http.request(request)
time = ("Uhrzeit: " + response.read_body)
puts time
sleep(1)
end
