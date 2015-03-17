class UsersController < ApplicationController
  def index
  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
    @graph = Koala::Facebook::API.new(oauth_access_token)
    @profile = @graph.get_object("me")
    @friends = @graph.get_connections("me", "friends")
  end
end
