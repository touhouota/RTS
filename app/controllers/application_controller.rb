# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private
    def current_user
      # TODO: リクエストしてきたユーザidをもとにuserを取得
      # return unless session[:user_id]
      # @current_user ||= User.find(session[:user_id])"
      @current_user ||= User.last
    end
end
