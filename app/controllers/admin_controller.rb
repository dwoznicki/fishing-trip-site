enable :sessions

post '/admin/login' do
	admin = Person.find_by(email: params[:email])
	if admin && admin.password = params[:password]
		session[:id] = admin.id
		p "=========================================="
		p session
		p current_user
		redirect '/admin'
	else
		flash[:errors] = ['Incorrect email or password']
		status 400
		redirect '/admin/login'
	end
end

delete '/sessions/:id' do
	current_user = nil
	session[:id] = nil
	redirect '/'
end

get '/admin' do
	@users = User.all
	@articles = Article.all
	@trips = Trip.all
	erb :'admins/index'
end

post '/trips' do
	trip = Trip.new(name: params[:name], location: params[:location], start_date: params[:start_date], end_date: params[:end_date], price: params[:price])
	if trip.save
		redirect '/admin'
	else
		flash[:errors] = trip.errors.full_messages
		redirect '/admin'
	end
end
