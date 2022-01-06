class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: { id: user.id, family_name: user.family_name, given_name: user.given_name, email: user.email }
  end

  def index
    user = User.first
    render json: [{ id: user.id, family_name: user.family_name, given_name: user.given_name, email: user.email }]
  end

  def me
    user = User.first
    render json: { id: user.id, family_name: user.family_name, given_name: user.given_name, email: user.email }
  end
end