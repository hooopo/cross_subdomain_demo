require 'sinatra'
set :protection, :except => :frame_options

get '/' do
  erb :index
end
