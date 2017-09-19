require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(index_url)

    projects = []

    index_page.css("li.project.grid_4").each do |project|
      title = project.css("h2.bbcard_blur")
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
