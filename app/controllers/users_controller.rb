class UsersController < ApplicationController
  before_action :authenticate_user!
  respond_to :json

  def index
    users = User.all.map do |user|
      UserSerializer.new(User.first).serializable_hash[:data][:attributes]
    end
    render json: users, status: :ok
  end

  def show
    user = User.find_by(id: params[:id])

    if user.nil?
      render json: {message: "Not found"}, status: 404
    else
      render json: UserSerializer.new(user).serializable_hash[:data][:attributes]
    end
  end
end
