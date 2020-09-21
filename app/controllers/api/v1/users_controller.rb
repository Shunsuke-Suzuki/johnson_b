# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        # routingでformat jsonを指定しない場合は下記のコードでjson.jbuilderを見に行く
        # render :index, formats: :json, handlers: :jbuilder
      end

      def show
        @user = User.find(params[:id])
      end

      def new
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { message: 'ok' }
        else
          render json: { mseeage: 'ng' }
        end
      end

      def edit
        @user = User.find(params[:id])
      end

      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json: { message: 'updated' }
        else
          render 'update failed'
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
