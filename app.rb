require 'sinatra'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == 'admin' and password == 'password'
end

get '/' do
	"Welcome!"
end