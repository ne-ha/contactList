class UsersController < ApplicationController
  require 'koala'

  def index
  end

  def login
    @loged_user = User.koala(request.env['omniauth.auth']['credentials'])
    token = "CAACEdEose0cBAIv6iutkHnCNbkMLMYjCMLW0kks0FYeIXE6Hr0v2dzeJknDdCEZCc7rf1yNfuqCZBZCGCU7dKwJ2PRSa2NnP3cJQMuq9nOQSLCsJ5cxjS20ZAn4epTsm2SiP0vQkRrWQPw5wZBRVbZBMsPSnTe5ZA3ycuekceZCKngA6jrBlybY3ZCjYPqSF83R7O1okU7Mx1eLEI54ZBh8w9F"
    @graph = Koala::Facebook::API.new(token)
    @friends = @graph.get_connections("me", "friends?fields=id, name, picture.type(small)")
  end
end
