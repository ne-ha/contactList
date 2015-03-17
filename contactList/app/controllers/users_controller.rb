class UsersController < ApplicationController
  require 'koala'

  def index
  end

  def login
    auth = request.env["omniauth.auth"]
    fb_access_token = auth['credentials']['token']
    @loged_user = User.koala(request.env['omniauth.auth']['credentials'])
    @graph = Koala::Facebook::API.new(fb_access_token)
    @friends = @graph.get_connections("me", "friends?fields=id, name, picture.type(small)") 
  end
end
