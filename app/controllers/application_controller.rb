class ApplicationController < ActionController::API
  include SessionsHelper

  private

  def logged_in_user
    unless logged_in?
      render json: { message: 'ok' }
    end
  end
end
