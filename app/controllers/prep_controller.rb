get '/prep' do
  # list yourthings
  erb :'yourthings/index'
end

get '/yourthings/new' do
  # form for yourthing
  erb :'yourthings/new'
end

post '/yourthings' do
  # new yourthing
  redirect "/yourthings"
  # redirect "/yourthings/#{@yourthing.id}"
end

get '/yourthings/:id' do
  # specific yourthing should only work if you login
  erb :"/yourthings/show"
end

get '/yourthings/:id/edit' do
  # edit form
  erb :"/yourthings/edit"
end

put 'yourthings/:id' do
  # update yourthing
  redirect "/yourthings/#{params[:id]}"
end

delete 'yourthings/:id' do
  # delete yourthing
  redirect '/yourthings'
end