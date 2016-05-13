# rubyscrape
General Web Scraper written in Ruby for public use.

This was written for learning purposes and data science purposes.

Please e-mail me at mattaym@gmail.com or comment for any questions or concerns. 

Enjoy!

<h1>Windows Users HTTParty notes</h1>
If users would like to use HTTParty to interact with urls easily with their scraping, make sure to change http.verify mode to the following:

http.verify_mode = OpenSSL::SSL::VERIFY_NONE

This should be done in httparty/conection_adapter.rb

<h1>TODO</h1>


Create Tutorial/Example for rubyscrape

Add support for mechanize

Add support for logging in to websites using textforms

Add support for captchas and buttons

Create scraping options for more specialized and less generalized terms.