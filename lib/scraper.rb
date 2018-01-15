require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def links(page_url)
    hash = {}
    doc = Nokogiri::HTML(open(page_url))
   #binding.pry
   page = doc.css("#content")
   binding.pry
    page.each do |s|
    binding.pry
      hash[s.css("a").text] = s.css("a")[0][href]
    end
    #binding.pry
  end
end

Scraper.new.links("https://en.wikipedia.org/wiki/War_studies")