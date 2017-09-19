require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open(index_url))
    #binding.pry
    index_page.css(".student-card").collect.with_index do |cards, index|
      scraped_students = {}
      scraped_students[:name] = index_page.css(".student-name")[index].text
      scraped_students[:location] = index_page.css(".student-location")[index].text
      scraped_students[:profile_url] = index_page.css(".student-card a")[index]["href"]
      scraped_students
    end
  end

  def self.scrape_profile_page(profile_url)
    student_hash = {}
    profile_page = Nokogiri::HTML(open(profile_url))
  end

end
