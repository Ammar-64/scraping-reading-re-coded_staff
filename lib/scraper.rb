require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
headers = doc.css("h2")
headers.each do |header|  
    puts header.text.strip
end