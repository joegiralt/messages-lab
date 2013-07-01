require 'sinatra'
require 'json'
require "sinatra/activerecord"
require 'debugger'


set :database, "sqlite3:///ichat.db"


get '/' do
  @messages = Message.all
  erb :messages
end

get '/reset' do
    Message.destroy_all
   # Reset the messages
  "Messages reset!"
end

post '/' do
    #debugger
    params
    message = Message.create(:sender => params[:from], :receiver => params[:to], :content => params[:content])


  # TODO: Read the message contents, save to the database

end

class Message < ActiveRecord::Base

  # TODO: Use this class as a table in the database

end