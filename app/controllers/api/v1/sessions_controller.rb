# frozen_string_literal: true

module Api
  module V1
    class SessionsController < ApplicationController
      def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user&.authenticate(params[:session][:password])
          log_in user
          render json: { message: 'ok' }
        else
          render json: { message: 'ng' }
        end
      end

      def destroy
        log_out if logged_in?
        render json: { message: 'ok' }
      end
    end
  end
end
