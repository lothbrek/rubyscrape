#Dependencies required for use.
#Please e-mail me or comment if anything is out of date or
#Does not work, with the error message you are getting.

require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

#send request to scrape page
page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0')

#Use Pry for debugging
Pry.start(binding) 