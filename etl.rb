require 'faraday'
require 'faraday/net_http'
Faraday.default_adapter = :net_http
require 'json'

response = Faraday.get('https://picsum.photos/v2/list?page=2&limit=100')


parsed = JSON.parse(response.body)

parsed.each do |x|
    puts x
    Picture.create(x)
  end
