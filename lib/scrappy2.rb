require 'rubygems'
require 'nokogiri'
require 'open-uri'
   

def creppy 
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	crypto_name = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]')
	crypto_price = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')

	crypto_array = []
	
	cryp = Hash.new

	for i in 0..(crypto_name.length - 1)
		crypto_array << {crypto_name[i].text => crypto_price[i].text}
	end
	return crypto_array
end
puts creppy


    