class WelcomeController < ApplicationController
  respond_to :json

  def index
    render json: {data: 'aprender alguma coisa'}, status: :ok
  end
end