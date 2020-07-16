require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))   
puts page.class   # => Nokogiri::HTML::Document
