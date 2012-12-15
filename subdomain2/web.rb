require 'sinatra'
set :protection, :except => :frame_options

get '/' do
  erb :index
end

post "/update" do
  content_type "text/html"
  "<script>document.domain = 'herokuapp.com';parent.window.callback('#{params[:comment]}');</script>"
end
