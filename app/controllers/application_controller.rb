class ApplicationController < ActionController::API
  include SessionsHelper

  private

  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end
end
