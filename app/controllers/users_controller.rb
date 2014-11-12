class UsersController < ApplicationController

  def index

  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
    
  end

  def status_update
  	@graph.put_connections("me", "feed", :message => "I am writing on my wall!")
  end

end
