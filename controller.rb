require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/word_formatter'
require 'json'

get '/' do 
  erb (:home)
end

get '/address' do 
  content_type(:json)

  result = {
    'address' => '3 Argyle House',
    'building' => "CODEBASE", 
    'postcode' => 'e13 zqf',
    'phone' => '0131558030'
  }

  result1 = WordFormatter.new (result)
  result1.loud

  results = {
    address: "#{result1.address}",
    building: "#{result1.building}", 
    postcode: "#{result1.postcode}",
    phone: "#{result1.phone}"
  }

  return results.to_json
end

  get '/camelcase/:word' do
    (params[:word]).camelize

  end