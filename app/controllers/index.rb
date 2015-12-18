enable :sessions
use Rack::Flash

get '/' do
  @trip = Article.find(1)
  @about = Article.find(2)
  @schedule = Trip.all
  @contact = Article.find(3)
  erb :index
end

get '/prep' do
  w_api = Wunderground.new
  @forecast = w_api.forecast10day_for("19.7997,87.4764")
  erb :'preparations/index'
end
