class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: :create

    def create
        user_info = request.env['omniauth.auth']
        binding.pry

        render json: user_info
    end
end