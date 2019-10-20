# frozen_string_literal: true

module Api
  class ApplicationController < ActionController::Base
    before_action :current_user

    def current_user
      # TODO: リクエストしてきたユーザidをもとにuserを取得
      # return unless session[:user_id]
      # @current_user ||= User.find(session[:user_id])
      Rails.logger.debug "============================"
      @current_user ||= User.last
    end
  end
end
