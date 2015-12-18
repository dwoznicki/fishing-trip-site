helpers do

	def current_user
		@current_user ||= Person.where(id: session[:id]).first if session[:id]
	end

end
