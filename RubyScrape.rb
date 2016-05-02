#Dependencies required for use.
#Please e-mail me or comment if anything is out of date or
#Does not work, with the error message you are getting.

require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

#send request to scrape page
#I am using a pets listing on craigslist for testing purposes
page = HTTParty.get('https://memphis.craigslist.org/search/pet?s=0')

#Nokogiri to parse the HTML
parse_page = Nokogiri::HTML(page)

#empty array to store scraping data
scrape_array = []

#this is where we parse the data
#adjust the parse command to your own needs

#type in your array to hold the content when Pry begins 
#currently this is scrape_array

parse_page.css('.content').css('.row').css('.hdrlnk').map do |a|
	name = a.text
	scrape_array.push(name) 
end

#This will push scrape_array's contents into a CSV file
#named scrape_info.csv
CSV.open('scrape_info.csv', 'w') do |csv|
	csv << scrape_array
end

#Use Pry for debugging
#Type 'exit' when you want to quit the pry debugging session
#uncomment for testing/debugging purposes!
#Pry.start(binding) 
