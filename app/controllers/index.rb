enable :sessions
use Rack::Flash

get '/' do
  @trip = Article.find(1)
  @about = Article.find(2)
  @schedule = Trip.all
  @contact = Article.find(3)
  erb :index
end
