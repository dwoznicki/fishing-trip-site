get '/articles/:id/edit' do
  @article = Article.find(params[:id])
  erb :'/articles/_update'
end

put '/articles/:id' do
  p params
  article = Article.find(params[:id])
  article.title = params[:title]
  article.body = params[:body]
  if article.save
    redirect '/admin'
  else
    flash[:errors] = article.errors.full_messages
    redirect '/admin'
  end
end

delete '/articles/:id' do
  Article.find(params[:id]).destroy
  redirect '/admin'
end
