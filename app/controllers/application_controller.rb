class ApplicationController < ActionController::Base
  protect_from_forgery

  serialization_scope :current_user

  def current_user
    @current_user ||= User.where(id: 2).first
  end
end
