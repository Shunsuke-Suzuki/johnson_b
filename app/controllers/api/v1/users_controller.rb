# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
      end

      def show
        @user = User.find(params[:id])
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { message: 'create ok' }
        else
          render json: { mseeage: @user.errors.full_messages }
        end
      end

      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json: { message: 'update ok' }
        else
          render json: { message: @user.errors.full_messages }
        end
      end

      def destroy
        User.find(params[:id]).destroy
        render json: { message: 'user destroied' }
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
    end
  end
end
