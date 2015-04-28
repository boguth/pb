require 'twitter'
import urllib.request
import json
import html

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end

topics = ["poop", "poopy", "pooped"]
poopcount = 0 
client.filter(track: topics.join(",")) do |object|
 poopcount += 1 if object.is_a?(Twitter::Tweet)
end


