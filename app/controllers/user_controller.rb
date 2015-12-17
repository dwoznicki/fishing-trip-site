#show all users
get '/users' do
	@users = User.all
	erb :'/users/user_index'
end

#new user form
get '/users/new' do
	erb :'/users/user_new'
end

#create new user
post '/users' do
	user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
	if user.save
		redirect '/admin'
	else
		status 400
		flash[:errors] = user.errors.full_messages
		redirect '/users/new'
	end
end

#get edit page
get '/users/:id/edit' do
	@user = User.find(params[:id])
	erb :'/users/user_edit'
end

#show a user
get '/users/:id' do
	@user = User.find(params[:id])
end

#submit user edit
put '/users/:id' do
	user = User.find(params[:id])
	user.first_name = params[:first_name]
	user.last_name = params[:last_name]
	user.email = params[:email]
	if user.save
		redirect '/admin'
	else
		flash[:errors] = user.errors.full_messages
		redirect "/users/#{current_user.id}/edit"
	end
end

#delete user
delete '/users/:id' do
	User.find(params[:id]).destroy
	session[:id] = nil
	current_user = nil
end


