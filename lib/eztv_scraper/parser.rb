require 'nokogiri'
require 'httparty'

module Parser
    def list_parser
      @eztvurl = 'https://eztv.io/showlist/rating/'
      unparsed_showlist = HTTParty.get(@eztvurl)
      parsed_showlist = Nokogiri::HTML(unparsed_showlist.body)
    end

    def parsed_show(series_link)
      unparsed_page = HTTParty.get(series_link)
      parsed_page = Nokogiri::HTML(unparsed_page.body)
    end
end
