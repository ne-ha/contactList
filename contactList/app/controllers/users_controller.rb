class UsersController < ApplicationController
  def index
  end

  def login
    @token = request.env["omniauth.auth"]['credentials']['token']
    @friends = FbGraph::User.me(@token).friends
  end
end
