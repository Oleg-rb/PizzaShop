#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop-2.db"

class Product < ActiveRecord::Base
end

get '/' do

	@products = Product.all
	erb :index
end

get '/about' do
		erb :about
end
