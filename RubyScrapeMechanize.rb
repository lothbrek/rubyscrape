require 'rubygems'
require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'pry-byebug'
require 'csv'
require 'mechanize'

#To do: add button and form filling support and captcha support

#I suggest turning off Javascript in your browser. The scraper doesn't
#see the javascript, so turning off Javascript allows you to see what
#the scraper is going to see. The following instructions are for chrome.

# 1) Click the Chrome menu in the top right hand corner of your browser
# 2) Select "Settings"
# 3) Click "Show Advanced Settings"
# 4) In the "Privacy" section, click "Content settings"
# 5) In the JavaScript section, click "Do not allow any site to run JavaScript". (Remember to undo this later!)

scraper = Mechanize.new
scraper.history_added = Proc.new {sleep 0.5 } #limit rate of scraping


#Modify based on your own needs
BASE_URL = 'http://sfbay.craigslist.org'
ADDRESS = 'http://sfbay.craigslist.org/search/sfc/apa'
results = []

#begin scraping
scraper.get(ADDRESS) do |search_page|
	
	search_form = search_page.form_with(:id => 'searchform') do |search|
		
		search['query'] 	= 'Garden'
		search['min_price'] = 250
		search['max_price'] = 1500
	end

	results_page = search_form.submit #submit form and return new object representing fresults page
	binding.pry
end