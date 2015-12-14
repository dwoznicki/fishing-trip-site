get '/admin' do 
	erb :'/admins/login'
end

post '/admin/login' do 
	user = User.find_by(email: params[:email])
	if user && user.password = params[:password]
		session[:id] = user.id
		redirect '/admin/controls'
	else
		flash[:errors] = ['Incorrect email or password']
		status 400
		redirect '/admin'
	end
end

delete '/sessions/:id' do
	current_user = nil
	session[:id] = nil
	redirect '/'
end

get '/admin/controls' do
	erb :'/admins/index'
end