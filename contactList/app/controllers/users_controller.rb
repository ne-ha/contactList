class UsersController < ApplicationController
  def index
  end

  def login
    @token = FACEBOOK_CONFIG['token']
    binding.pry
    @friends = FbGraph::User.me(@token).friends
  end
end
