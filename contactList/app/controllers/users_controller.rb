class UsersController < ApplicationController
  def index
  end

  def login
    @token = FACEBOOK_CONFIG['token']
    @friends = FbGraph::User.me(@token).friends
  end
end
