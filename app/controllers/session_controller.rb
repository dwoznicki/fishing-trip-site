#create new session page
get '/login' do 
	return erb :'/sessions/new', layout: false
end


#login to session
post '/login' do 
	user = User.find_by(email: params[:email])
	if user
		session[:id] = user.id
		redirect '/prep'
	else
		flash[:errors] = ['Unable to find this email']
		status 400
		redirect '/'
	end
end

#delete session
delete '/sessions/:id' do
	current_user = nil
	session[:id] = nil
	redirect '/'
end


