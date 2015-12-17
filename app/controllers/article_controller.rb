get '/articles/:id/edit' do
  @article = Article.find(params[:id])
  erb :'/articles/_update'
end

put '/articles/:id' do
  @article = Article.find(params[:id])
end

delete '/articles/:id' do
  Article.find(params[:id]).destroy
end
