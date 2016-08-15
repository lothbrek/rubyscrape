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

<ul>
<li>Create Tutorial/Example for rubyscrape (Currently, the code itself is a good example with several comments)</li>

<li>Add support for mechanize (implemented but needs further improving for public)</li>

<li>Add support for logging in to websites using textforms</li>

<li>Add support for captchas and buttons</li>

<li>Create scraping options for more specialized and less generalized terms.</li>

<li>Create crawler/spider for storing information</li>

<li>Compare speed against python's Scrapy</li>
<li>Create Gem for RubyScrape to make it even easier to use.</li>

</ul>